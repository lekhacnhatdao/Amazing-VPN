import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'vpn_server_model.freezed.dart';

part 'vpn_server_model.g.dart';

@Freezed()
class VpnServerModel with _$VpnServerModel {
  @HiveType(typeId: 0)
  const factory VpnServerModel({
    @HiveField(0) required int id,
    @HiveField(1) required String ovpn,
    @HiveField(2) required String flag,
    @HiveField(3, defaultValue: false) required bool vip,
    @HiveField(4) String? ip,
    @HiveField(5) String? city,
    @HiveField(6) String? ovpnConfig,
    @HiveField(7) String? country,
    @HiveField(8) String? region,
  }) = _VpnServerModel;

  factory VpnServerModel.fromJson(Map<String, dynamic> json, int i) =>
      _$VpnServerModelFromJson(json, i);
}
