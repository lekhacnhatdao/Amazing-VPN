import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:in_app_purchase/in_app_purchase.dart';

import 'package:openvpn/domain/model/index.dart';
import 'package:openvpn/resources/colors.dart';
import 'package:openvpn/utils/utils.dart';
import 'package:openvpn_flutter/openvpn_flutter.dart';

part 'app_state.freezed.dart';

@Freezed()
class AppState with _$AppState {
  const factory AppState({
    @Default([]) List<VpnServerModel> servers,
    @Default([]) List<HistoryModel> histories,
    @Default(false) bool isLoading,
    VpnServerModel? currentServer,
    VpnStatus? vpnStatus,
    VPNStage? vpnStage,
    @Default([]) List<ProductDetails> subscriptions,
    @Default([]) List<ProductDetails> consumables,
    ProductDetails? selectedSubscription,
    @Default(false) bool isVip,
  }) = _AppState;
}

extension AppStateExt on AppState {
  String get titleStatus {
    if (vpnStage == VPNStage.disconnected) {
      return 'Not connected';
    }

    if (vpnStage == VPNStage.connected) {
      return 'Connected';
    }
    return 'Connecting...';
  }

  Color get colorStatus {
    if (vpnStage == VPNStage.disconnected) {
      return AppColors.colorRed;
    }

    if (vpnStage == VPNStage.connected) {
      return AppColors.colorGreen;
    }
    return AppColors.colorYellow;
  }

  String get titleLoadingButton {
    if (vpnStage == VPNStage.disconnected) {
      return 'Connect';
    }

    if (vpnStage == VPNStage.connected) {
      return 'Disconnect';
    }
    return 'Connecting...';
  }

  Color get backgroundLoadingButton {
    if (vpnStage == VPNStage.disconnected) return AppColors.disconnected;
    if (vpnStage == VPNStage.connected) return AppColors.connected;
    return AppColors.connecting;
  }

  bool get isConnecting {
    return vpnStage != VPNStage.disconnected && vpnStage != VPNStage.connected;
  }

  String get duration {
    if (vpnStage == VPNStage.connected) {
      return vpnStatus?.duration ?? '00:00:00';
    }
    return '00:00:00';
  }

  String get byteIn {
    if (vpnStage == VPNStage.connected) {
      final bytes = int.parse(vpnStatus?.byteIn ?? '0');
      return Utils.convertBytesToString(bytes);
    }
    return '-- Mbps';
  }

  String get byteOut {
    if (vpnStage == VPNStage.connected) {
      final bytes = int.parse(vpnStatus?.byteOut ?? '0');
      return Utils.convertBytesToString(bytes);
    }
    return '-- Mbps';
  }
}
