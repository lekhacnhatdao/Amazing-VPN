// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vpn_server_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VpnServerModel _$VpnServerModelFromJson(Map<String, dynamic> json, int i) {
  return _VpnServerModel.fromJson(json, i);
}

/// @nodoc
mixin _$VpnServerModel {
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get ovpn => throw _privateConstructorUsedError;
  @HiveField(2)
  String get flag => throw _privateConstructorUsedError;
  @HiveField(3, defaultValue: false)
  bool get vip => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get ip => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get city => throw _privateConstructorUsedError;
  @HiveField(6)
  String? get ovpnConfig => throw _privateConstructorUsedError;
  @HiveField(7)
  String? get country => throw _privateConstructorUsedError;
  @HiveField(8)
  String? get region => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VpnServerModelCopyWith<VpnServerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VpnServerModelCopyWith<$Res> {
  factory $VpnServerModelCopyWith(
          VpnServerModel value, $Res Function(VpnServerModel) then) =
      _$VpnServerModelCopyWithImpl<$Res, VpnServerModel>;
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String ovpn,
      @HiveField(2) String flag,
      @HiveField(3, defaultValue: false) bool vip,
      @HiveField(4) String? ip,
      @HiveField(5) String? city,
      @HiveField(6) String? ovpnConfig,
      @HiveField(7) String? country,
      @HiveField(8) String? region});
}

/// @nodoc
class _$VpnServerModelCopyWithImpl<$Res, $Val extends VpnServerModel>
    implements $VpnServerModelCopyWith<$Res> {
  _$VpnServerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ovpn = null,
    Object? flag = null,
    Object? vip = null,
    Object? ip = freezed,
    Object? city = freezed,
    Object? ovpnConfig = freezed,
    Object? country = freezed,
    Object? region = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      ovpn: null == ovpn
          ? _value.ovpn
          : ovpn // ignore: cast_nullable_to_non_nullable
              as String,
      flag: null == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as String,
      vip: null == vip
          ? _value.vip
          : vip // ignore: cast_nullable_to_non_nullable
              as bool,
      ip: freezed == ip
          ? _value.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      ovpnConfig: freezed == ovpnConfig
          ? _value.ovpnConfig
          : ovpnConfig // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VpnServerModelCopyWith<$Res>
    implements $VpnServerModelCopyWith<$Res> {
  factory _$$_VpnServerModelCopyWith(
          _$_VpnServerModel value, $Res Function(_$_VpnServerModel) then) =
      __$$_VpnServerModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String ovpn,
      @HiveField(2) String flag,
      @HiveField(3, defaultValue: false) bool vip,
      @HiveField(4) String? ip,
      @HiveField(5) String? city,
      @HiveField(6) String? ovpnConfig,
      @HiveField(7) String? country,
      @HiveField(8) String? region});
}

/// @nodoc
class __$$_VpnServerModelCopyWithImpl<$Res>
    extends _$VpnServerModelCopyWithImpl<$Res, _$_VpnServerModel>
    implements _$$_VpnServerModelCopyWith<$Res> {
  __$$_VpnServerModelCopyWithImpl(
      _$_VpnServerModel _value, $Res Function(_$_VpnServerModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ovpn = null,
    Object? flag = null,
    Object? vip = null,
    Object? ip = freezed,
    Object? city = freezed,
    Object? ovpnConfig = freezed,
    Object? country = freezed,
    Object? region = freezed,
  }) {
    return _then(_$_VpnServerModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      ovpn: null == ovpn
          ? _value.ovpn
          : ovpn // ignore: cast_nullable_to_non_nullable
              as String,
      flag: null == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as String,
      vip: null == vip
          ? _value.vip
          : vip // ignore: cast_nullable_to_non_nullable
              as bool,
      ip: freezed == ip
          ? _value.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      ovpnConfig: freezed == ovpnConfig
          ? _value.ovpnConfig
          : ovpnConfig // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 0)
class _$_VpnServerModel implements _VpnServerModel {
  const _$_VpnServerModel(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.ovpn,
      @HiveField(2) required this.flag,
      @HiveField(3, defaultValue: false) required this.vip,
      @HiveField(4) this.ip,
      @HiveField(5) this.city,
      @HiveField(6) this.ovpnConfig,
      @HiveField(7) this.country,
      @HiveField(8) this.region});

  factory _$_VpnServerModel.fromJson(Map<String, dynamic> json, int i) =>
      _$$_VpnServerModelFromJson(json, i);

  @override
  @HiveField(0)
  final int id;
  @override
  @HiveField(1)
  final String ovpn;
  @override
  @HiveField(2)
  final String flag;
  @override
  @HiveField(3, defaultValue: false)
  final bool vip;
  @override
  @HiveField(4)
  final String? ip;
  @override
  @HiveField(5)
  final String? city;
  @override
  @HiveField(6)
  final String? ovpnConfig;
  @override
  @HiveField(7)
  final String? country;
  @override
  @HiveField(8)
  final String? region;

  @override
  String toString() {
    return 'VpnServerModel(id: $id, ovpn: $ovpn, flag: $flag, vip: $vip, ip: $ip, city: $city, ovpnConfig: $ovpnConfig, country: $country, region: $region)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VpnServerModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ovpn, ovpn) || other.ovpn == ovpn) &&
            (identical(other.flag, flag) || other.flag == flag) &&
            (identical(other.vip, vip) || other.vip == vip) &&
            (identical(other.ip, ip) || other.ip == ip) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.ovpnConfig, ovpnConfig) ||
                other.ovpnConfig == ovpnConfig) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.region, region) || other.region == region));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, ovpn, flag, vip, ip, city, ovpnConfig, country, region);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VpnServerModelCopyWith<_$_VpnServerModel> get copyWith =>
      __$$_VpnServerModelCopyWithImpl<_$_VpnServerModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VpnServerModelToJson(
      this,
    );
  }
}

abstract class _VpnServerModel implements VpnServerModel {
  const factory _VpnServerModel(
      {@HiveField(0) required final int id,
      @HiveField(1) required final String ovpn,
      @HiveField(2) required final String flag,
      @HiveField(3, defaultValue: false) required final bool vip,
      @HiveField(4) final String? ip,
      @HiveField(5) final String? city,
      @HiveField(6) final String? ovpnConfig,
      @HiveField(7) final String? country,
      @HiveField(8) final String? region}) = _$_VpnServerModel;

  factory _VpnServerModel.fromJson(Map<String, dynamic> json, int i) =
      _$_VpnServerModel.fromJson;

  @override
  @HiveField(0)
  int get id;
  @override
  @HiveField(1)
  String get ovpn;
  @override
  @HiveField(2)
  String get flag;
  @override
  @HiveField(3, defaultValue: false)
  bool get vip;
  @override
  @HiveField(4)
  String? get ip;
  @override
  @HiveField(5)
  String? get city;
  @override
  @HiveField(6)
  String? get ovpnConfig;
  @override
  @HiveField(7)
  String? get country;
  @override
  @HiveField(8)
  String? get region;
  @override
  @JsonKey(ignore: true)
  _$$_VpnServerModelCopyWith<_$_VpnServerModel> get copyWith =>
      throw _privateConstructorUsedError;
}
