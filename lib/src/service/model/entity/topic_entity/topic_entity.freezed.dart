// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'topic_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TopicEntity _$TopicEntityFromJson(Map<String, dynamic> json) {
  return _TopicEntity.fromJson(json);
}

/// @nodoc
mixin _$TopicEntity {
  @JsonKey(name: 'key', required: true, disallowNullValue: true)
  String get key => throw _privateConstructorUsedError;
  @JsonKey(name: 'coordinate', required: true, disallowNullValue: true)
  CoordinateDTO get coordinate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopicEntityCopyWith<TopicEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopicEntityCopyWith<$Res> {
  factory $TopicEntityCopyWith(
          TopicEntity value, $Res Function(TopicEntity) then) =
      _$TopicEntityCopyWithImpl<$Res, TopicEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'key', required: true, disallowNullValue: true)
      String key,
      @JsonKey(name: 'coordinate', required: true, disallowNullValue: true)
      CoordinateDTO coordinate});

  $CoordinateDTOCopyWith<$Res> get coordinate;
}

/// @nodoc
class _$TopicEntityCopyWithImpl<$Res, $Val extends TopicEntity>
    implements $TopicEntityCopyWith<$Res> {
  _$TopicEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$_TopicEntityCopyWith<$Res>
    implements $TopicEntityCopyWith<$Res> {
  factory _$$_TopicEntityCopyWith(
          _$_TopicEntity value, $Res Function(_$_TopicEntity) then) =
      __$$_TopicEntityCopyWithImpl<$Res>;
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
class __$$_TopicEntityCopyWithImpl<$Res>
    extends _$TopicEntityCopyWithImpl<$Res, _$_TopicEntity>
    implements _$$_TopicEntityCopyWith<$Res> {
  __$$_TopicEntityCopyWithImpl(
      _$_TopicEntity _value, $Res Function(_$_TopicEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? coordinate = null,
  }) {
    return _then(_$_TopicEntity(
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
class _$_TopicEntity implements _TopicEntity {
  _$_TopicEntity(
      {@JsonKey(name: 'key', required: true, disallowNullValue: true)
      required this.key,
      @JsonKey(name: 'coordinate', required: true, disallowNullValue: true)
      required this.coordinate});

  factory _$_TopicEntity.fromJson(Map<String, dynamic> json) =>
      _$$_TopicEntityFromJson(json);

  @override
  @JsonKey(name: 'key', required: true, disallowNullValue: true)
  final String key;
  @override
  @JsonKey(name: 'coordinate', required: true, disallowNullValue: true)
  final CoordinateDTO coordinate;

  @override
  String toString() {
    return 'TopicEntity(key: $key, coordinate: $coordinate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TopicEntity &&
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
  _$$_TopicEntityCopyWith<_$_TopicEntity> get copyWith =>
      __$$_TopicEntityCopyWithImpl<_$_TopicEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TopicEntityToJson(
      this,
    );
  }
}

abstract class _TopicEntity implements TopicEntity {
  factory _TopicEntity(
      {@JsonKey(name: 'key', required: true, disallowNullValue: true)
      required final String key,
      @JsonKey(name: 'coordinate', required: true, disallowNullValue: true)
      required final CoordinateDTO coordinate}) = _$_TopicEntity;

  factory _TopicEntity.fromJson(Map<String, dynamic> json) =
      _$_TopicEntity.fromJson;

  @override
  @JsonKey(name: 'key', required: true, disallowNullValue: true)
  String get key;
  @override
  @JsonKey(name: 'coordinate', required: true, disallowNullValue: true)
  CoordinateDTO get coordinate;
  @override
  @JsonKey(ignore: true)
  _$$_TopicEntityCopyWith<_$_TopicEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
