import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../index.dart';

part 'history_model.freezed.dart';
part 'history_model.g.dart';

@Freezed()
class HistoryModel with _$HistoryModel {
  @HiveType(typeId: 1)
  const factory HistoryModel({
    @HiveField(0) required String id,
    @HiveField(1) required VpnServerModel vpnServerModel,
    @HiveField(2) required DateTime createAt,
    @HiveField(3) required String duration,
    @HiveField(4) required String byteIn,
    @HiveField(5) required String byteOut,
  }) = _HistoryModel;
}
