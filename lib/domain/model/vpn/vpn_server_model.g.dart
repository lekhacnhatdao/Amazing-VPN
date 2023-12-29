// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vpn_server_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class VpnServerModelAdapter extends TypeAdapter<_$_VpnServerModel> {
  @override
  final int typeId = 0;

  @override
  _$_VpnServerModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_VpnServerModel(
      id: fields[0] as int,
      ovpn: fields[1] as String,
      flag: fields[2] as String,
      vip: fields[3] == null ? false : fields[3] as bool,
      ip: fields[4] as String?,
      city: fields[5] as String?,
      ovpnConfig: fields[6] as String?,
      country: fields[7] as String?,
      region: fields[8] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_VpnServerModel obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.ovpn)
      ..writeByte(2)
      ..write(obj.flag)
      ..writeByte(3)
      ..write(obj.vip)
      ..writeByte(4)
      ..write(obj.ip)
      ..writeByte(5)
      ..write(obj.city)
      ..writeByte(6)
      ..write(obj.ovpnConfig)
      ..writeByte(7)
      ..write(obj.country)
      ..writeByte(8)
      ..write(obj.region);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VpnServerModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VpnServerModel _$$_VpnServerModelFromJson(Map<String, dynamic> json, int i) {
  final vpn = json['vpn'] as Map<String, dynamic>;
  final free = vpn['free'] as bool;
  return _$_VpnServerModel(
    id: i,
    ovpn: json['ovpn'] as String,
    flag: json['flag'] as String,
    vip: !free,
    ip: json['ip'] as String?,
    city: json['city'] as String?,
    ovpnConfig: json['ovpnConfig'] as String?,
    country: json['country'] as String?,
    region: json['region'] as String?,
  );
}

Map<String, dynamic> _$$_VpnServerModelToJson(_$_VpnServerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ovpn': instance.ovpn,
      'flag': instance.flag,
      'vip': instance.vip,
      'ip': instance.ip,
      'city': instance.city,
      'ovpnConfig': instance.ovpnConfig,
      'country': instance.country,
      'region': instance.region,
    };
