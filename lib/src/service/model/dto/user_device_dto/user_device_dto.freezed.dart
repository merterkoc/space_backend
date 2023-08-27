// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_device_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDeviceDTO _$UserDeviceDTOFromJson(Map<String, dynamic> json) {
  return _UserDeviceDTO.fromJson(json);
}

/// @nodoc
mixin _$UserDeviceDTO {
  @JsonKey(name: 'fcmToken', required: true)
  String? get fcmToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'coordinate')
  CoordinateDTO? get coordinate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDeviceDTOCopyWith<UserDeviceDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDeviceDTOCopyWith<$Res> {
  factory $UserDeviceDTOCopyWith(
          UserDeviceDTO value, $Res Function(UserDeviceDTO) then) =
      _$UserDeviceDTOCopyWithImpl<$Res, UserDeviceDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'fcmToken', required: true) String? fcmToken,
      @JsonKey(name: 'coordinate') CoordinateDTO? coordinate});

  $CoordinateDTOCopyWith<$Res>? get coordinate;
}

/// @nodoc
class _$UserDeviceDTOCopyWithImpl<$Res, $Val extends UserDeviceDTO>
    implements $UserDeviceDTOCopyWith<$Res> {
  _$UserDeviceDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fcmToken = freezed,
    Object? coordinate = freezed,
  }) {
    return _then(_value.copyWith(
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
      coordinate: freezed == coordinate
          ? _value.coordinate
          : coordinate // ignore: cast_nullable_to_non_nullable
              as CoordinateDTO?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CoordinateDTOCopyWith<$Res>? get coordinate {
    if (_value.coordinate == null) {
      return null;
    }

    return $CoordinateDTOCopyWith<$Res>(_value.coordinate!, (value) {
      return _then(_value.copyWith(coordinate: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserDeviceDTOCopyWith<$Res>
    implements $UserDeviceDTOCopyWith<$Res> {
  factory _$$_UserDeviceDTOCopyWith(
          _$_UserDeviceDTO value, $Res Function(_$_UserDeviceDTO) then) =
      __$$_UserDeviceDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'fcmToken', required: true) String? fcmToken,
      @JsonKey(name: 'coordinate') CoordinateDTO? coordinate});

  @override
  $CoordinateDTOCopyWith<$Res>? get coordinate;
}

/// @nodoc
class __$$_UserDeviceDTOCopyWithImpl<$Res>
    extends _$UserDeviceDTOCopyWithImpl<$Res, _$_UserDeviceDTO>
    implements _$$_UserDeviceDTOCopyWith<$Res> {
  __$$_UserDeviceDTOCopyWithImpl(
      _$_UserDeviceDTO _value, $Res Function(_$_UserDeviceDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fcmToken = freezed,
    Object? coordinate = freezed,
  }) {
    return _then(_$_UserDeviceDTO(
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
      coordinate: freezed == coordinate
          ? _value.coordinate
          : coordinate // ignore: cast_nullable_to_non_nullable
              as CoordinateDTO?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, createToJson: true)
class _$_UserDeviceDTO implements _UserDeviceDTO {
  _$_UserDeviceDTO(
      {@JsonKey(name: 'fcmToken', required: true) this.fcmToken,
      @JsonKey(name: 'coordinate') this.coordinate});

  factory _$_UserDeviceDTO.fromJson(Map<String, dynamic> json) =>
      _$$_UserDeviceDTOFromJson(json);

  @override
  @JsonKey(name: 'fcmToken', required: true)
  final String? fcmToken;
  @override
  @JsonKey(name: 'coordinate')
  final CoordinateDTO? coordinate;

  @override
  String toString() {
    return 'UserDeviceDTO(fcmToken: $fcmToken, coordinate: $coordinate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserDeviceDTO &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken) &&
            (identical(other.coordinate, coordinate) ||
                other.coordinate == coordinate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fcmToken, coordinate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserDeviceDTOCopyWith<_$_UserDeviceDTO> get copyWith =>
      __$$_UserDeviceDTOCopyWithImpl<_$_UserDeviceDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDeviceDTOToJson(
      this,
    );
  }
}

abstract class _UserDeviceDTO implements UserDeviceDTO {
  factory _UserDeviceDTO(
          {@JsonKey(name: 'fcmToken', required: true) final String? fcmToken,
          @JsonKey(name: 'coordinate') final CoordinateDTO? coordinate}) =
      _$_UserDeviceDTO;

  factory _UserDeviceDTO.fromJson(Map<String, dynamic> json) =
      _$_UserDeviceDTO.fromJson;

  @override
  @JsonKey(name: 'fcmToken', required: true)
  String? get fcmToken;
  @override
  @JsonKey(name: 'coordinate')
  CoordinateDTO? get coordinate;
  @override
  @JsonKey(ignore: true)
  _$$_UserDeviceDTOCopyWith<_$_UserDeviceDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
