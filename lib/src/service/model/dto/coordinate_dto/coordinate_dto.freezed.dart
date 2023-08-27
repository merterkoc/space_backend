// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coordinate_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CoordinateDTO _$CoordinateDTOFromJson(Map<String, dynamic> json) {
  return _CoordinateDTO.fromJson(json);
}

/// @nodoc
mixin _$CoordinateDTO {
  @JsonKey(name: 'latitude')
  double? get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'longitude')
  double? get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoordinateDTOCopyWith<CoordinateDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoordinateDTOCopyWith<$Res> {
  factory $CoordinateDTOCopyWith(
          CoordinateDTO value, $Res Function(CoordinateDTO) then) =
      _$CoordinateDTOCopyWithImpl<$Res, CoordinateDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'latitude') double? latitude,
      @JsonKey(name: 'longitude') double? longitude});
}

/// @nodoc
class _$CoordinateDTOCopyWithImpl<$Res, $Val extends CoordinateDTO>
    implements $CoordinateDTOCopyWith<$Res> {
  _$CoordinateDTOCopyWithImpl(this._value, this._then);

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
abstract class _$$_CoordinateDTOCopyWith<$Res>
    implements $CoordinateDTOCopyWith<$Res> {
  factory _$$_CoordinateDTOCopyWith(
          _$_CoordinateDTO value, $Res Function(_$_CoordinateDTO) then) =
      __$$_CoordinateDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'latitude') double? latitude,
      @JsonKey(name: 'longitude') double? longitude});
}

/// @nodoc
class __$$_CoordinateDTOCopyWithImpl<$Res>
    extends _$CoordinateDTOCopyWithImpl<$Res, _$_CoordinateDTO>
    implements _$$_CoordinateDTOCopyWith<$Res> {
  __$$_CoordinateDTOCopyWithImpl(
      _$_CoordinateDTO _value, $Res Function(_$_CoordinateDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_$_CoordinateDTO(
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
class _$_CoordinateDTO implements _CoordinateDTO {
  _$_CoordinateDTO(
      {@JsonKey(name: 'latitude') this.latitude,
      @JsonKey(name: 'longitude') this.longitude});

  factory _$_CoordinateDTO.fromJson(Map<String, dynamic> json) =>
      _$$_CoordinateDTOFromJson(json);

  @override
  @JsonKey(name: 'latitude')
  final double? latitude;
  @override
  @JsonKey(name: 'longitude')
  final double? longitude;

  @override
  String toString() {
    return 'CoordinateDTO(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CoordinateDTO &&
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
  _$$_CoordinateDTOCopyWith<_$_CoordinateDTO> get copyWith =>
      __$$_CoordinateDTOCopyWithImpl<_$_CoordinateDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CoordinateDTOToJson(
      this,
    );
  }
}

abstract class _CoordinateDTO implements CoordinateDTO {
  factory _CoordinateDTO(
      {@JsonKey(name: 'latitude') final double? latitude,
      @JsonKey(name: 'longitude') final double? longitude}) = _$_CoordinateDTO;

  factory _CoordinateDTO.fromJson(Map<String, dynamic> json) =
      _$_CoordinateDTO.fromJson;

  @override
  @JsonKey(name: 'latitude')
  double? get latitude;
  @override
  @JsonKey(name: 'longitude')
  double? get longitude;
  @override
  @JsonKey(ignore: true)
  _$$_CoordinateDTOCopyWith<_$_CoordinateDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
