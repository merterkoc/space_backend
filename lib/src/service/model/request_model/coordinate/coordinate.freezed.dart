// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coordinate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Coordinate _$CoordinateFromJson(Map<String, dynamic> json) {
  return _Coordinate.fromJson(json);
}

/// @nodoc
mixin _$Coordinate {
  @JsonKey(name: 'latitude')
  double? get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'longitude')
  double? get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoordinateCopyWith<Coordinate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoordinateCopyWith<$Res> {
  factory $CoordinateCopyWith(
          Coordinate value, $Res Function(Coordinate) then) =
      _$CoordinateCopyWithImpl<$Res, Coordinate>;
  @useResult
  $Res call(
      {@JsonKey(name: 'latitude') double? latitude,
      @JsonKey(name: 'longitude') double? longitude});
}

/// @nodoc
class _$CoordinateCopyWithImpl<$Res, $Val extends Coordinate>
    implements $CoordinateCopyWith<$Res> {
  _$CoordinateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CoordinateCopyWith<$Res>
    implements $CoordinateCopyWith<$Res> {
  factory _$$_CoordinateCopyWith(
          _$_Coordinate value, $Res Function(_$_Coordinate) then) =
      __$$_CoordinateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'latitude') double? latitude,
      @JsonKey(name: 'longitude') double? longitude});
}

/// @nodoc
class __$$_CoordinateCopyWithImpl<$Res>
    extends _$CoordinateCopyWithImpl<$Res, _$_Coordinate>
    implements _$$_CoordinateCopyWith<$Res> {
  __$$_CoordinateCopyWithImpl(
      _$_Coordinate _value, $Res Function(_$_Coordinate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_$_Coordinate(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, createToJson: true)
class _$_Coordinate implements _Coordinate {
  _$_Coordinate(
      {@JsonKey(name: 'latitude') this.latitude,
      @JsonKey(name: 'longitude') this.longitude});

  factory _$_Coordinate.fromJson(Map<String, dynamic> json) =>
      _$$_CoordinateFromJson(json);

  @override
  @JsonKey(name: 'latitude')
  final double? latitude;
  @override
  @JsonKey(name: 'longitude')
  final double? longitude;

  @override
  String toString() {
    return 'Coordinate(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Coordinate &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CoordinateCopyWith<_$_Coordinate> get copyWith =>
      __$$_CoordinateCopyWithImpl<_$_Coordinate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CoordinateToJson(
      this,
    );
  }
}

abstract class _Coordinate implements Coordinate {
  factory _Coordinate(
      {@JsonKey(name: 'latitude') final double? latitude,
      @JsonKey(name: 'longitude') final double? longitude}) = _$_Coordinate;

  factory _Coordinate.fromJson(Map<String, dynamic> json) =
      _$_Coordinate.fromJson;

  @override
  @JsonKey(name: 'latitude')
  double? get latitude;
  @override
  @JsonKey(name: 'longitude')
  double? get longitude;
  @override
  @JsonKey(ignore: true)
  _$$_CoordinateCopyWith<_$_Coordinate> get copyWith =>
      throw _privateConstructorUsedError;
}
