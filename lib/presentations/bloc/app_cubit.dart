import 'dart:async';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:injectable/injectable.dart';
import 'package:openvpn/data/sharedpref/shared_prefs.dart';


import 'package:openvpn_flutter/openvpn_flutter.dart';


import '../../domain/model/index.dart';
import '../../domain/repository/vpn_repository.dart';
import '../../utils/config.dart';
import '../../utils/utils.dart';
import 'app_state.dart';

const _tag = 'AppCubit';
final _productIds = <String>{...Config.subIds, ...Config.consumableIds};

@injectable
class AppCubit extends Cubit<AppState> {
  AppCubit(this._repository, this._sharedPrefs)
      : super(
          const AppState(),
        ) {
    Utils.log(_tag, 'init');
    _initOVPN();
    _initBilling();
  }

  final VpnRepository _repository;
  final SharedPrefs _sharedPrefs;
  late OpenVPN openVPN;

  final InAppPurchase _inAppPurchase = InAppPurchase.instance;
  late StreamSubscription<List<PurchaseDetails>> _subscription;

  Future<void> fetchServerList({bool isRefresh = false}) async {
    emit(state.copyWith(isLoading: true));
    final result = await _repository.getVpnServerList(isRefresh: isRefresh);
    var currentServer = result
        .firstWhereOrNull((element) => element.id == _sharedPrefs.currentVPN);
    currentServer ??= result.firstWhereOrNull((element) => !element.vip);
    emit(
      state.copyWith(
        servers: result,
        isLoading: false,
        currentServer: currentServer,
      ),
    );
  }

  Future<void> fetchHistoryList() async {
    final histories = _repository.getHistoryList();
    emit(state.copyWith(histories: histories));
  }

  void setCurrentServer(VpnServerModel server) {
    Utils.log(_tag, 'setCurrentServer: ${server.country}');
    _sharedPrefs.setCurrentVPN(id: server.id);
    emit(state.copyWith(currentServer: server));
  }

  Future<void> toggle() async {
    final currentVpnServer = state.currentServer;
    if (currentVpnServer == null) {
      return;
    }

    if (state.vpnStage == VPNStage.connected) {
      _doDisconnect();
    } else if (state.vpnStage == VPNStage.disconnected) {
      final config = await _repository.getOvpnConfig(currentVpnServer.id);
      _doConnect(currentVpnServer.id, currentVpnServer.country ?? '', config);
    }
  }

  Future<void> autoConnect(VpnServerModel model) async {
    Utils.log(_tag, 'autoConnect: ${model.country}');

    if (state.vpnStage != VPNStage.disconnected &&
        state.vpnStage != VPNStage.connected) {
      //is connecting
      return;
    }

    if (state.vpnStage == VPNStage.connected) {
      _doDisconnect();
    }
    final config = await _repository.getOvpnConfig(model.id);
    _doConnect(model.id, '${model.country}', config);

    setCurrentServer(model);
  }

  void _doConnect(int id, String name, String config) {
    Utils.log(_tag, 'connect: country = $name, config = $config');
    emit(state.copyWith(vpnStage: VPNStage.connecting));
    openVPN.connect(
      config,
      name,
      username: '',
      password: '',
      bypassPackages: [],
      certIsRequired: true,
    );
  }

  void _doDisconnect() {
    final model = state.currentServer;
    if (model == null) {
      return;
    }
    final createAt = DateTime.now();

    final params = HistoryModel(
      id: createAt.millisecondsSinceEpoch.toString(),
      vpnServerModel: model,
      createAt: createAt,
      duration: state.duration,
      byteIn: state.byteIn,
      byteOut: state.byteOut,
    );

    _repository.saveRecent(params);
    openVPN.disconnect();
  }

//region Open VPN
  void _initOVPN() {
    openVPN = OpenVPN(
      onVpnStatusChanged: _onVpnStatusChanged,
      onVpnStageChanged: _onVpnStageChanged,
    );
    openVPN
        .initialize(
          groupIdentifier: 'group.sharevpn.xyz',
          providerBundleIdentifier: 'sharevpn.xyz.VPNExtension',
          localizedDescription: 'Share VPN - Universe Proxy',
        )
        .catchError(onError);
    openVPN
        .stage()
        .then((vpnStatus) => emit(state.copyWith(vpnStage: vpnStatus)));
    openVPN.status().then((stage) => emit(state.copyWith(vpnStatus: stage)));
  }

  void _onVpnStatusChanged(VpnStatus? vpnStatus) {
    emit(state.copyWith(vpnStatus: vpnStatus));
  }

  void _onVpnStageChanged(VPNStage? stage, String rawStage) {
    Utils.log(_tag, '_onVpnStateChanged: $stage');
    emit(state.copyWith(vpnStage: stage));
  }

//endregion

//region Billing
  void _initBilling() {
    final purchaseUpdated = _inAppPurchase.purchaseStream;
    _subscription = purchaseUpdated.listen(
      _listenToPurchaseUpdated,
      onDone: () {
        _subscription.cancel();
      },
      onError: (error) {},
    );
  }

  Future<void> _listenToPurchaseUpdated(
    List<PurchaseDetails> purchaseDetailsList,
  ) async {
    for (final purchaseDetails in purchaseDetailsList) {
      switch (purchaseDetails.status) {
        case PurchaseStatus.pending:
          Utils.log(_tag, 'pending with ${purchaseDetails.productID}');
          break;
        case PurchaseStatus.purchased:
          if (_isSubscriptionPackage(purchaseDetails.productID)) {
            emit(state.copyWith(isVip: true));
          }
          Utils.log(_tag, 'purchased with ${purchaseDetails.productID}');
          break;
        case PurchaseStatus.error:
          Utils.log(_tag, 'error with ${purchaseDetails.productID}');
          break;
        case PurchaseStatus.restored:
          Utils.log(_tag, 'restored with ${purchaseDetails.productID}');
          if (_isSubscriptionPackage(purchaseDetails.productID)) {
            emit(state.copyWith(isVip: true));
          }
          break;
        case PurchaseStatus.canceled:
          Utils.log(_tag, 'canceled with ${purchaseDetails.productID}');
          break;
      }

      if (purchaseDetails.pendingCompletePurchase) {
        await _inAppPurchase.completePurchase(purchaseDetails);
      }
    }
  }

  Future<void> startBilling() async {
    final isAvailable = await _inAppPurchase.isAvailable();

    if (!isAvailable) {
      Utils.log(_tag, 'startBilling -> false');
      return;
    }

    if (Platform.isIOS) {
      // TODO(QuyenLX): implement for iOS here
    }
    await _inAppPurchase.restorePurchases();
    final products = await _getProductDetails();
    final subscriptions = <ProductDetails>[];
    final consumables = <ProductDetails>[];
    for (final element in products) {
      if (_isSubscriptionPackage(element.id)) {
        subscriptions.add(element);
      } else {
        consumables.add(element);
      }
    }

    Utils.log(_tag, 'subscriptions: ${subscriptions.map((e) => e.id)}');
    Utils.log(_tag, 'consumables: ${consumables.length}');
    emit(
      state.copyWith(
        subscriptions: subscriptions,
        consumables: consumables,
        selectedSubscription: subscriptions.firstOrNull,
      ),
    );
  }

  void setSubscription(ProductDetails productDetails) {
    emit(state.copyWith(selectedSubscription: productDetails));
  }

  Future<void> subscribe() async {
    final productDetails = state.selectedSubscription;
    if (productDetails == null) return;
    await subscribeWithProduct(productDetails);
  }

  Future<void> subscribeWithProduct(ProductDetails productDetails) async {
    final purchaseParam = PurchaseParam(productDetails: productDetails);
    if (Platform.isIOS) {
      // TODO(QuyenLX): implement for iOS here
    }
    await _inAppPurchase.buyNonConsumable(
      purchaseParam: purchaseParam,
    );
  }

  Future<void> buy(ProductDetails productDetails) async {
    final purchaseParam = PurchaseParam(productDetails: productDetails);
    await _inAppPurchase.buyConsumable(
      purchaseParam: purchaseParam,
    );
  }

  void stopBilling() {
    if (Platform.isIOS) {
      // TODO(QuyenLX): implement for iOS here
    }
    _subscription.cancel();
  }

  Future<List<ProductDetails>> _getProductDetails() async {
    final response = await _inAppPurchase.queryProductDetails(_productIds);
    final items = response.productDetails;
    final uniqueProducts = <ProductDetails>[];
    final uniqueIds = items.map((e) => e.id).toSet();
    for (final id in uniqueIds) {
      final item = items.firstWhere((item) => item.id == id);
      uniqueProducts.add(item);
    }
    return uniqueProducts.sorted((a, b) => a.rawPrice > b.rawPrice ? 1 : 0);
  }

  bool _isSubscriptionPackage(String id) {
    return Config.subIds.contains(id);
  }
//endregion
}