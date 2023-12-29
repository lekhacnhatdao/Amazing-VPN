import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

import '../../domain/model/index.dart';

enum Table {
  vpn('vpn'),
  history('history');

  const Table(this.value);

  final String value;
}

@Singleton()
class AppDatabase {
  factory AppDatabase() => _instance;

  AppDatabase._constructor();

  static final AppDatabase _instance = AppDatabase._constructor();

  late Box<VpnServerModel> _vpnBox;
  late Box<HistoryModel> _historyBox;
   late Box<bool> _agreePrivacyBox;
  Future<void> initialize() async {
    await Hive.initFlutter();
    Hive.registerAdapter<VpnServerModel>(VpnServerModelAdapter());
    Hive.registerAdapter<HistoryModel>(HistoryModelAdapter());
    _vpnBox = await Hive.openBox<VpnServerModel>(Table.vpn.value);
    _historyBox = await Hive.openBox<HistoryModel>(Table.history.value);
      _agreePrivacyBox = await Hive.openBox<bool>('agreePrivacy');
  }
    bool getAgreePrivacyStatus() {
    return _agreePrivacyBox.get('status') ?? false;
  }

  Future<void> setAgreePrivacyStatus(bool status) async {
    await _agreePrivacyBox.put('status', status);
  }
  List<VpnServerModel> getAllVpnServers() {
    return _vpnBox.values.toList();
  }

  List<HistoryModel> getAllHistories() {
    return _historyBox.values.toList();
  }

  Future<void> saveVpnServer(VpnServerModel element) async {
    await _vpnBox.put(element.id, element);
  }

  Future<void> saveHistory(HistoryModel history) async {
    await _historyBox.put(history.id, history);
  }

  VpnServerModel? getVpnServerById(int? id) {
    return _vpnBox.get(id);
  }
 Future<void> deleteAllHistories(Function()? callback) async {
    final List<HistoryModel> allHistories = getAllHistories();
    int index = 0;
    for (final history in allHistories) {
      await _historyBox.delete(history.id);
      index++;
      if(index == allHistories.length)
      {
        callback?.call();
      }
    }
    debugPrint('all history deleted');
  }
}
