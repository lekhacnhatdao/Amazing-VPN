// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HistoryModel {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  VpnServerModel get vpnServerModel => throw _privateConstructorUsedError;
  @HiveField(2)
  DateTime get createAt => throw _privateConstructorUsedError;
  @HiveField(3)
  String get duration => throw _privateConstructorUsedError;
  @HiveField(4)
  String get byteIn => throw _privateConstructorUsedError;
  @HiveField(5)
  String get byteOut => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HistoryModelCopyWith<HistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryModelCopyWith<$Res> {
  factory $HistoryModelCopyWith(
          HistoryModel value, $Res Function(HistoryModel) then) =
      _$HistoryModelCopyWithImpl<$Res, HistoryModel>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) VpnServerModel vpnServerModel,
      @HiveField(2) DateTime createAt,
      @HiveField(3) String duration,
      @HiveField(4) String byteIn,
      @HiveField(5) String byteOut});

  $VpnServerModelCopyWith<$Res> get vpnServerModel;
}

/// @nodoc
class _$HistoryModelCopyWithImpl<$Res, $Val extends HistoryModel>
    implements $HistoryModelCopyWith<$Res> {
  _$HistoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? vpnServerModel = null,
    Object? createAt = null,
    Object? duration = null,
    Object? byteIn = null,
    Object? byteOut = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      vpnServerModel: null == vpnServerModel
          ? _value.vpnServerModel
          : vpnServerModel // ignore: cast_nullable_to_non_nullable
              as VpnServerModel,
      createAt: null == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      byteIn: null == byteIn
          ? _value.byteIn
          : byteIn // ignore: cast_nullable_to_non_nullable
              as String,
      byteOut: null == byteOut
          ? _value.byteOut
          : byteOut // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VpnServerModelCopyWith<$Res> get vpnServerModel {
    return $VpnServerModelCopyWith<$Res>(_value.vpnServerModel, (value) {
      return _then(_value.copyWith(vpnServerModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_HistoryModelCopyWith<$Res>
    implements $HistoryModelCopyWith<$Res> {
  factory _$$_HistoryModelCopyWith(
          _$_HistoryModel value, $Res Function(_$_HistoryModel) then) =
      __$$_HistoryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) VpnServerModel vpnServerModel,
      @HiveField(2) DateTime createAt,
      @HiveField(3) String duration,
      @HiveField(4) String byteIn,
      @HiveField(5) String byteOut});

  @override
  $VpnServerModelCopyWith<$Res> get vpnServerModel;
}

/// @nodoc
class __$$_HistoryModelCopyWithImpl<$Res>
    extends _$HistoryModelCopyWithImpl<$Res, _$_HistoryModel>
    implements _$$_HistoryModelCopyWith<$Res> {
  __$$_HistoryModelCopyWithImpl(
      _$_HistoryModel _value, $Res Function(_$_HistoryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? vpnServerModel = null,
    Object? createAt = null,
    Object? duration = null,
    Object? byteIn = null,
    Object? byteOut = null,
  }) {
    return _then(_$_HistoryModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      vpnServerModel: null == vpnServerModel
          ? _value.vpnServerModel
          : vpnServerModel // ignore: cast_nullable_to_non_nullable
              as VpnServerModel,
      createAt: null == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      byteIn: null == byteIn
          ? _value.byteIn
          : byteIn // ignore: cast_nullable_to_non_nullable
              as String,
      byteOut: null == byteOut
          ? _value.byteOut
          : byteOut // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@HiveType(typeId: 1)
class _$_HistoryModel implements _HistoryModel {
  const _$_HistoryModel(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.vpnServerModel,
      @HiveField(2) required this.createAt,
      @HiveField(3) required this.duration,
      @HiveField(4) required this.byteIn,
      @HiveField(5) required this.byteOut});

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final VpnServerModel vpnServerModel;
  @override
  @HiveField(2)
  final DateTime createAt;
  @override
  @HiveField(3)
  final String duration;
  @override
  @HiveField(4)
  final String byteIn;
  @override
  @HiveField(5)
  final String byteOut;

  @override
  String toString() {
    return 'HistoryModel(id: $id, vpnServerModel: $vpnServerModel, createAt: $createAt, duration: $duration, byteIn: $byteIn, byteOut: $byteOut)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HistoryModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.vpnServerModel, vpnServerModel) ||
                other.vpnServerModel == vpnServerModel) &&
            (identical(other.createAt, createAt) ||
                other.createAt == createAt) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.byteIn, byteIn) || other.byteIn == byteIn) &&
            (identical(other.byteOut, byteOut) || other.byteOut == byteOut));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, vpnServerModel, createAt, duration, byteIn, byteOut);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HistoryModelCopyWith<_$_HistoryModel> get copyWith =>
      __$$_HistoryModelCopyWithImpl<_$_HistoryModel>(this, _$identity);
}

abstract class _HistoryModel implements HistoryModel {
  const factory _HistoryModel(
      {@HiveField(0) required final String id,
      @HiveField(1) required final VpnServerModel vpnServerModel,
      @HiveField(2) required final DateTime createAt,
      @HiveField(3) required final String duration,
      @HiveField(4) required final String byteIn,
      @HiveField(5) required final String byteOut}) = _$_HistoryModel;

  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  VpnServerModel get vpnServerModel;
  @override
  @HiveField(2)
  DateTime get createAt;
  @override
  @HiveField(3)
  String get duration;
  @override
  @HiveField(4)
  String get byteIn;
  @override
  @HiveField(5)
  String get byteOut;
  @override
  @JsonKey(ignore: true)
  _$$_HistoryModelCopyWith<_$_HistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
