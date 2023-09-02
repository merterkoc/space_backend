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
  @JsonKey(name: 'topics')
  List<String> get topics => throw _privateConstructorUsedError;
  @JsonKey(name: 'sent', required: true, defaultValue: false)
  bool get sent => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'body')
  String? get body => throw _privateConstructorUsedError;
  @JsonKey(name: 'sentDate')
  DateTime? get sentDate => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'topics') List<String> topics,
      @JsonKey(name: 'sent', required: true, defaultValue: false) bool sent,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'body') String? body,
      @JsonKey(name: 'sentDate') DateTime? sentDate});
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
    Object? topics = null,
    Object? sent = null,
    Object? title = freezed,
    Object? body = freezed,
    Object? sentDate = freezed,
  }) {
    return _then(_value.copyWith(
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      topics: null == topics
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sent: null == sent
          ? _value.sent
          : sent // ignore: cast_nullable_to_non_nullable
              as bool,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      sentDate: freezed == sentDate
          ? _value.sentDate
          : sentDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      @JsonKey(name: 'topics') List<String> topics,
      @JsonKey(name: 'sent', required: true, defaultValue: false) bool sent,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'body') String? body,
      @JsonKey(name: 'sentDate') DateTime? sentDate});
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
    Object? topics = null,
    Object? sent = null,
    Object? title = freezed,
    Object? body = freezed,
    Object? sentDate = freezed,
  }) {
    return _then(_$_NotificationEntity(
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      topics: null == topics
          ? _value._topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sent: null == sent
          ? _value.sent
          : sent // ignore: cast_nullable_to_non_nullable
              as bool,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      sentDate: freezed == sentDate
          ? _value.sentDate
          : sentDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, createToJson: true)
class _$_NotificationEntity implements _NotificationEntity {
  _$_NotificationEntity(
      {@JsonKey(name: 'eventId', required: true) required this.eventId,
      @JsonKey(name: 'topics') required final List<String> topics,
      @JsonKey(name: 'sent', required: true, defaultValue: false)
      required this.sent,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'body') this.body,
      @JsonKey(name: 'sentDate') this.sentDate})
      : _topics = topics;

  factory _$_NotificationEntity.fromJson(Map<String, dynamic> json) =>
      _$$_NotificationEntityFromJson(json);

  @override
  @JsonKey(name: 'eventId', required: true)
  final String eventId;
  final List<String> _topics;
  @override
  @JsonKey(name: 'topics')
  List<String> get topics {
    if (_topics is EqualUnmodifiableListView) return _topics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topics);
  }

  @override
  @JsonKey(name: 'sent', required: true, defaultValue: false)
  final bool sent;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'body')
  final String? body;
  @override
  @JsonKey(name: 'sentDate')
  final DateTime? sentDate;

  @override
  String toString() {
    return 'NotificationEntity(eventId: $eventId, topics: $topics, sent: $sent, title: $title, body: $body, sentDate: $sentDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotificationEntity &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            const DeepCollectionEquality().equals(other._topics, _topics) &&
            (identical(other.sent, sent) || other.sent == sent) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.sentDate, sentDate) ||
                other.sentDate == sentDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      eventId,
      const DeepCollectionEquality().hash(_topics),
      sent,
      title,
      body,
      sentDate);

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
      @JsonKey(name: 'topics') required final List<String> topics,
      @JsonKey(name: 'sent', required: true, defaultValue: false)
      required final bool sent,
      @JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'body') final String? body,
      @JsonKey(name: 'sentDate')
      final DateTime? sentDate}) = _$_NotificationEntity;

  factory _NotificationEntity.fromJson(Map<String, dynamic> json) =
      _$_NotificationEntity.fromJson;

  @override
  @JsonKey(name: 'eventId', required: true)
  String get eventId;
  @override
  @JsonKey(name: 'topics')
  List<String> get topics;
  @override
  @JsonKey(name: 'sent', required: true, defaultValue: false)
  bool get sent;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'body')
  String? get body;
  @override
  @JsonKey(name: 'sentDate')
  DateTime? get sentDate;
  @override
  @JsonKey(ignore: true)
  _$$_NotificationEntityCopyWith<_$_NotificationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
