import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';

import '../../domain/model/index.dart';
import '../../domain/repository/vpn_repository.dart';
import '../../utils/utils.dart';
import '../local/app_db.dart';
import '../remote/vpn_remote.dart';

const _tag = 'VpnRepositoryImpl';

@Injectable(as: VpnRepository)
class VpnRepositoryImpl implements VpnRepository {
  VpnRepositoryImpl(this._remote, this._local);

  final VpnRemote _remote;
  final AppDatabase _local;

  @override
  Future<List<VpnServerModel>> getVpnServerList({
    required bool isRefresh,
  }) async {
    // final cached = _local.getAllVpnServers();
    // if (cached.isNotEmpty && !isRefresh) {
    //   return cached;
    // }
    final vpnServerList = await _remote.getVpnServerList();
    //save to database
    for (final element in vpnServerList) {
      await _local.saveVpnServer(element);
    }

    return vpnServerList;
  }

  @override
  List<HistoryModel> getHistoryList() {
    return _local
        .getAllHistories()
        .sorted((a, b) => b.createAt.compareTo(a.createAt));
  }

  @override
  Future<void> saveRecent(HistoryModel params) async {
    await _local.saveHistory(params);
  }

  // @override
  // Future<String> getOvpnConfig(int id) async {
  //   final cached = _local.getVpnServerById(id);
  //   if (cached == null) {
  //     throw Exception('Error! Cannot find $id');
  //   }

  //   var ovpnConfig = cached.ovpnConfig;
  //   if (ovpnConfig != null) {
  //     Utils.log(_tag, 'getVpnServerConfig: cached = $ovpnConfig');
  //     return ovpnConfig;
  //   }

  //   final ovpnConfigFile = await _remote.download(cached.ovpn);
  //   ovpnConfig = await ovpnConfigFile.readAsString();
  //   await _local.saveVpnServer(cached.copyWith(ovpnConfig: ovpnConfig));
  //   Utils.log(_tag, 'getVpnServerConfig: remote = $ovpnConfig');
  //   return ovpnConfig;
  // }

  @override
  Future<String> getOvpnConfig(int id) async {
    final cached = _local.getVpnServerById(id);
    if (cached == null) {
      throw Exception('Error! Cannot find $id');
    }

    var ovpnConfig = cached.ovpnConfig;
    if (ovpnConfig != null) {
      Utils.log(_tag, 'getVpnServerConfig: cached = $ovpnConfig');
      return ovpnConfig;
    }

    ovpnConfig = await _remote.download(cached.ovpn);
    await _local.saveVpnServer(cached.copyWith(ovpnConfig: ovpnConfig));
    Utils.log(_tag, 'getVpnServerConfig: remote = $ovpnConfig');
    return ovpnConfig;
  }
}
