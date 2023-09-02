// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NotificationEntity _$NotificationEntityFromJson(Map<String, dynamic> json) {
  return _NotificationEntity.fromJson(json);
}

/// @nodoc
mixin _$NotificationEntity {
  @JsonKey(name: 'eventId', required: true)
  String get eventId => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'body')
  String? get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationEntityCopyWith<NotificationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationEntityCopyWith<$Res> {
  factory $NotificationEntityCopyWith(
          NotificationEntity value, $Res Function(NotificationEntity) then) =
      _$NotificationEntityCopyWithImpl<$Res, NotificationEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'eventId', required: true) String eventId,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'body') String? body});
}

/// @nodoc
class _$NotificationEntityCopyWithImpl<$Res, $Val extends NotificationEntity>
    implements $NotificationEntityCopyWith<$Res> {
  _$NotificationEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
    Object? title = freezed,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NotificationEntityCopyWith<$Res>
    implements $NotificationEntityCopyWith<$Res> {
  factory _$$_NotificationEntityCopyWith(_$_NotificationEntity value,
          $Res Function(_$_NotificationEntity) then) =
      __$$_NotificationEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'eventId', required: true) String eventId,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'body') String? body});
}

/// @nodoc
class __$$_NotificationEntityCopyWithImpl<$Res>
    extends _$NotificationEntityCopyWithImpl<$Res, _$_NotificationEntity>
    implements _$$_NotificationEntityCopyWith<$Res> {
  __$$_NotificationEntityCopyWithImpl(
      _$_NotificationEntity _value, $Res Function(_$_NotificationEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
    Object? title = freezed,
    Object? body = freezed,
  }) {
    return _then(_$_NotificationEntity(
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, createToJson: true)
class _$_NotificationEntity implements _NotificationEntity {
  _$_NotificationEntity(
      {@JsonKey(name: 'eventId', required: true) required this.eventId,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'body') this.body});

  factory _$_NotificationEntity.fromJson(Map<String, dynamic> json) =>
      _$$_NotificationEntityFromJson(json);

  @override
  @JsonKey(name: 'eventId', required: true)
  final String eventId;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'body')
  final String? body;

  @override
  String toString() {
    return 'NotificationEntity(eventId: $eventId, title: $title, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotificationEntity &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, eventId, title, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotificationEntityCopyWith<_$_NotificationEntity> get copyWith =>
      __$$_NotificationEntityCopyWithImpl<_$_NotificationEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotificationEntityToJson(
      this,
    );
  }
}

abstract class _NotificationEntity implements NotificationEntity {
  factory _NotificationEntity(
      {@JsonKey(name: 'eventId', required: true) required final String eventId,
      @JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'body') final String? body}) = _$_NotificationEntity;

  factory _NotificationEntity.fromJson(Map<String, dynamic> json) =
      _$_NotificationEntity.fromJson;

  @override
  @JsonKey(name: 'eventId', required: true)
  String get eventId;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'body')
  String? get body;
  @override
  @JsonKey(ignore: true)
  _$$_NotificationEntityCopyWith<_$_NotificationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
