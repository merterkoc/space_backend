// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_device.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDevice _$UserDeviceFromJson(Map<String, dynamic> json) {
  return _UserDevice.fromJson(json);
}

/// @nodoc
mixin _$UserDevice {
  @JsonKey(name: 'fcmToken', defaultValue: 'DASDSA', required: true)
  String? get fcmToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'coordinate')
  Coordinate? get coordinate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDeviceCopyWith<UserDevice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDeviceCopyWith<$Res> {
  factory $UserDeviceCopyWith(
          UserDevice value, $Res Function(UserDevice) then) =
      _$UserDeviceCopyWithImpl<$Res, UserDevice>;
  @useResult
  $Res call(
      {@JsonKey(name: 'fcmToken', defaultValue: 'DASDSA', required: true)
      String? fcmToken,
      @JsonKey(name: 'coordinate') Coordinate? coordinate});

  $CoordinateCopyWith<$Res>? get coordinate;
}

/// @nodoc
class _$UserDeviceCopyWithImpl<$Res, $Val extends UserDevice>
    implements $UserDeviceCopyWith<$Res> {
  _$UserDeviceCopyWithImpl(this._value, this._then);

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
              as Coordinate?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CoordinateCopyWith<$Res>? get coordinate {
    if (_value.coordinate == null) {
      return null;
    }

    return $CoordinateCopyWith<$Res>(_value.coordinate!, (value) {
      return _then(_value.copyWith(coordinate: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserDeviceCopyWith<$Res>
    implements $UserDeviceCopyWith<$Res> {
  factory _$$_UserDeviceCopyWith(
          _$_UserDevice value, $Res Function(_$_UserDevice) then) =
      __$$_UserDeviceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'fcmToken', defaultValue: 'DASDSA', required: true)
      String? fcmToken,
      @JsonKey(name: 'coordinate') Coordinate? coordinate});

  @override
  $CoordinateCopyWith<$Res>? get coordinate;
}

/// @nodoc
class __$$_UserDeviceCopyWithImpl<$Res>
    extends _$UserDeviceCopyWithImpl<$Res, _$_UserDevice>
    implements _$$_UserDeviceCopyWith<$Res> {
  __$$_UserDeviceCopyWithImpl(
      _$_UserDevice _value, $Res Function(_$_UserDevice) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fcmToken = freezed,
    Object? coordinate = freezed,
  }) {
    return _then(_$_UserDevice(
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
      coordinate: freezed == coordinate
          ? _value.coordinate
          : coordinate // ignore: cast_nullable_to_non_nullable
              as Coordinate?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, createToJson: true)
class _$_UserDevice implements _UserDevice {
  _$_UserDevice(
      {@JsonKey(name: 'fcmToken', defaultValue: 'DASDSA', required: true)
      this.fcmToken,
      @JsonKey(name: 'coordinate') this.coordinate});

  factory _$_UserDevice.fromJson(Map<String, dynamic> json) =>
      _$$_UserDeviceFromJson(json);

  @override
  @JsonKey(name: 'fcmToken', defaultValue: 'DASDSA', required: true)
  final String? fcmToken;
  @override
  @JsonKey(name: 'coordinate')
  final Coordinate? coordinate;

  @override
  String toString() {
    return 'UserDevice(fcmToken: $fcmToken, coordinate: $coordinate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserDevice &&
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
  _$$_UserDeviceCopyWith<_$_UserDevice> get copyWith =>
      __$$_UserDeviceCopyWithImpl<_$_UserDevice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDeviceToJson(
      this,
    );
  }
}

abstract class _UserDevice implements UserDevice {
  factory _UserDevice(
          {@JsonKey(name: 'fcmToken', defaultValue: 'DASDSA', required: true)
          final String? fcmToken,
          @JsonKey(name: 'coordinate') final Coordinate? coordinate}) =
      _$_UserDevice;

  factory _UserDevice.fromJson(Map<String, dynamic> json) =
      _$_UserDevice.fromJson;

  @override
  @JsonKey(name: 'fcmToken', defaultValue: 'DASDSA', required: true)
  String? get fcmToken;
  @override
  @JsonKey(name: 'coordinate')
  Coordinate? get coordinate;
  @override
  @JsonKey(ignore: true)
  _$$_UserDeviceCopyWith<_$_UserDevice> get copyWith =>
      throw _privateConstructorUsedError;
}
