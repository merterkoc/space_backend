// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'topic_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TopicDTO _$TopicDTOFromJson(Map<String, dynamic> json) {
  return _TopicDTO.fromJson(json);
}

/// @nodoc
mixin _$TopicDTO {
  @JsonKey(name: 'key', required: true, disallowNullValue: true)
  String get key => throw _privateConstructorUsedError;
  @JsonKey(name: 'coordinate', required: true, disallowNullValue: true)
  CoordinateDTO get coordinate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopicDTOCopyWith<TopicDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopicDTOCopyWith<$Res> {
  factory $TopicDTOCopyWith(TopicDTO value, $Res Function(TopicDTO) then) =
      _$TopicDTOCopyWithImpl<$Res, TopicDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'key', required: true, disallowNullValue: true)
      String key,
      @JsonKey(name: 'coordinate', required: true, disallowNullValue: true)
      CoordinateDTO coordinate});

  $CoordinateDTOCopyWith<$Res> get coordinate;
}

/// @nodoc
class _$TopicDTOCopyWithImpl<$Res, $Val extends TopicDTO>
    implements $TopicDTOCopyWith<$Res> {
  _$TopicDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? coordinate = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      coordinate: null == coordinate
          ? _value.coordinate
          : coordinate // ignore: cast_nullable_to_non_nullable
              as CoordinateDTO,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CoordinateDTOCopyWith<$Res> get coordinate {
    return $CoordinateDTOCopyWith<$Res>(_value.coordinate, (value) {
      return _then(_value.copyWith(coordinate: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TopicDTOCopyWith<$Res> implements $TopicDTOCopyWith<$Res> {
  factory _$$_TopicDTOCopyWith(
          _$_TopicDTO value, $Res Function(_$_TopicDTO) then) =
      __$$_TopicDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'key', required: true, disallowNullValue: true)
      String key,
      @JsonKey(name: 'coordinate', required: true, disallowNullValue: true)
      CoordinateDTO coordinate});

  @override
  $CoordinateDTOCopyWith<$Res> get coordinate;
}

/// @nodoc
class __$$_TopicDTOCopyWithImpl<$Res>
    extends _$TopicDTOCopyWithImpl<$Res, _$_TopicDTO>
    implements _$$_TopicDTOCopyWith<$Res> {
  __$$_TopicDTOCopyWithImpl(
      _$_TopicDTO _value, $Res Function(_$_TopicDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? coordinate = null,
  }) {
    return _then(_$_TopicDTO(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      coordinate: null == coordinate
          ? _value.coordinate
          : coordinate // ignore: cast_nullable_to_non_nullable
              as CoordinateDTO,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, createToJson: true)
class _$_TopicDTO implements _TopicDTO {
  _$_TopicDTO(
      {@JsonKey(name: 'key', required: true, disallowNullValue: true)
      required this.key,
      @JsonKey(name: 'coordinate', required: true, disallowNullValue: true)
      required this.coordinate});

  factory _$_TopicDTO.fromJson(Map<String, dynamic> json) =>
      _$$_TopicDTOFromJson(json);

  @override
  @JsonKey(name: 'key', required: true, disallowNullValue: true)
  final String key;
  @override
  @JsonKey(name: 'coordinate', required: true, disallowNullValue: true)
  final CoordinateDTO coordinate;

  @override
  String toString() {
    return 'TopicDTO(key: $key, coordinate: $coordinate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TopicDTO &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.coordinate, coordinate) ||
                other.coordinate == coordinate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, coordinate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TopicDTOCopyWith<_$_TopicDTO> get copyWith =>
      __$$_TopicDTOCopyWithImpl<_$_TopicDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TopicDTOToJson(
      this,
    );
  }
}

abstract class _TopicDTO implements TopicDTO {
  factory _TopicDTO(
      {@JsonKey(name: 'key', required: true, disallowNullValue: true)
      required final String key,
      @JsonKey(name: 'coordinate', required: true, disallowNullValue: true)
      required final CoordinateDTO coordinate}) = _$_TopicDTO;

  factory _TopicDTO.fromJson(Map<String, dynamic> json) = _$_TopicDTO.fromJson;

  @override
  @JsonKey(name: 'key', required: true, disallowNullValue: true)
  String get key;
  @override
  @JsonKey(name: 'coordinate', required: true, disallowNullValue: true)
  CoordinateDTO get coordinate;
  @override
  @JsonKey(ignore: true)
  _$$_TopicDTOCopyWith<_$_TopicDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
