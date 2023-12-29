// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HistoryModelAdapter extends TypeAdapter<_$_HistoryModel> {
  @override
  final int typeId = 1;

  @override
  _$_HistoryModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_HistoryModel(
      id: fields[0] as String,
      vpnServerModel: fields[1] as VpnServerModel,
      createAt: fields[2] as DateTime,
      duration: fields[3] as String,
      byteIn: fields[4] as String,
      byteOut: fields[5] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$_HistoryModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.vpnServerModel)
      ..writeByte(2)
      ..write(obj.createAt)
      ..writeByte(3)
      ..write(obj.duration)
      ..writeByte(4)
      ..write(obj.byteIn)
      ..writeByte(5)
      ..write(obj.byteOut);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HistoryModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
