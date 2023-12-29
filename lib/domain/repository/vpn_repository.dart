import '../model/index.dart';

abstract class VpnRepository {
  Future<List<VpnServerModel>> getVpnServerList({required bool isRefresh});

  List<HistoryModel> getHistoryList();

  Future<void> saveRecent(HistoryModel params);

  Future<String> getOvpnConfig(int id);
}
