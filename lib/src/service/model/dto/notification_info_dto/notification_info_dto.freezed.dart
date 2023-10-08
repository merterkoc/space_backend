// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_info_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NotificationInfoDTO _$NotificationInfoDTOFromJson(Map<String, dynamic> json) {
  return _NotificationInfoDTO.fromJson(json);
}

/// @nodoc
mixin _$NotificationInfoDTO {
  @JsonKey(name: 'notification', required: true)
  FirebaseNotificationDTO? get notification =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'to')
  String? get to => throw _privateConstructorUsedError;
  @JsonKey(name: 'condition')
  String? get condition => throw _privateConstructorUsedError;
  @JsonKey(name: 'priority')
  String? get priority => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationInfoDTOCopyWith<NotificationInfoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationInfoDTOCopyWith<$Res> {
  factory $NotificationInfoDTOCopyWith(
          NotificationInfoDTO value, $Res Function(NotificationInfoDTO) then) =
      _$NotificationInfoDTOCopyWithImpl<$Res, NotificationInfoDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'notification', required: true)
      FirebaseNotificationDTO? notification,
      @JsonKey(name: 'to') String? to,
      @JsonKey(name: 'condition') String? condition,
      @JsonKey(name: 'priority') String? priority});

  $FirebaseNotificationDTOCopyWith<$Res>? get notification;
}

/// @nodoc
class _$NotificationInfoDTOCopyWithImpl<$Res, $Val extends NotificationInfoDTO>
    implements $NotificationInfoDTOCopyWith<$Res> {
  _$NotificationInfoDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notification = freezed,
    Object? to = freezed,
    Object? condition = freezed,
    Object? priority = freezed,
  }) {
    return _then(_value.copyWith(
      notification: freezed == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as FirebaseNotificationDTO?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FirebaseNotificationDTOCopyWith<$Res>? get notification {
    if (_value.notification == null) {
      return null;
    }

    return $FirebaseNotificationDTOCopyWith<$Res>(_value.notification!,
        (value) {
      return _then(_value.copyWith(notification: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_NotificationInfoDTOCopyWith<$Res>
    implements $NotificationInfoDTOCopyWith<$Res> {
  factory _$$_NotificationInfoDTOCopyWith(_$_NotificationInfoDTO value,
          $Res Function(_$_NotificationInfoDTO) then) =
      __$$_NotificationInfoDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'notification', required: true)
      FirebaseNotificationDTO? notification,
      @JsonKey(name: 'to') String? to,
      @JsonKey(name: 'condition') String? condition,
      @JsonKey(name: 'priority') String? priority});

  @override
  $FirebaseNotificationDTOCopyWith<$Res>? get notification;
}

/// @nodoc
class __$$_NotificationInfoDTOCopyWithImpl<$Res>
    extends _$NotificationInfoDTOCopyWithImpl<$Res, _$_NotificationInfoDTO>
    implements _$$_NotificationInfoDTOCopyWith<$Res> {
  __$$_NotificationInfoDTOCopyWithImpl(_$_NotificationInfoDTO _value,
      $Res Function(_$_NotificationInfoDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notification = freezed,
    Object? to = freezed,
    Object? condition = freezed,
    Object? priority = freezed,
  }) {
    return _then(_$_NotificationInfoDTO(
      notification: freezed == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as FirebaseNotificationDTO?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, createToJson: true)
class _$_NotificationInfoDTO implements _NotificationInfoDTO {
  _$_NotificationInfoDTO(
      {@JsonKey(name: 'notification', required: true) this.notification,
      @JsonKey(name: 'to') this.to,
      @JsonKey(name: 'condition') this.condition,
      @JsonKey(name: 'priority') this.priority});

  factory _$_NotificationInfoDTO.fromJson(Map<String, dynamic> json) =>
      _$$_NotificationInfoDTOFromJson(json);

  @override
  @JsonKey(name: 'notification', required: true)
  final FirebaseNotificationDTO? notification;
  @override
  @JsonKey(name: 'to')
  final String? to;
  @override
  @JsonKey(name: 'condition')
  final String? condition;
  @override
  @JsonKey(name: 'priority')
  final String? priority;

  @override
  String toString() {
    return 'NotificationInfoDTO(notification: $notification, to: $to, condition: $condition, priority: $priority)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotificationInfoDTO &&
            (identical(other.notification, notification) ||
                other.notification == notification) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.priority, priority) ||
                other.priority == priority));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, notification, to, condition, priority);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotificationInfoDTOCopyWith<_$_NotificationInfoDTO> get copyWith =>
      __$$_NotificationInfoDTOCopyWithImpl<_$_NotificationInfoDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotificationInfoDTOToJson(
      this,
    );
  }
}

abstract class _NotificationInfoDTO implements NotificationInfoDTO {
  factory _NotificationInfoDTO(
          {@JsonKey(name: 'notification', required: true)
          final FirebaseNotificationDTO? notification,
          @JsonKey(name: 'to') final String? to,
          @JsonKey(name: 'condition') final String? condition,
          @JsonKey(name: 'priority') final String? priority}) =
      _$_NotificationInfoDTO;

  factory _NotificationInfoDTO.fromJson(Map<String, dynamic> json) =
      _$_NotificationInfoDTO.fromJson;

  @override
  @JsonKey(name: 'notification', required: true)
  FirebaseNotificationDTO? get notification;
  @override
  @JsonKey(name: 'to')
  String? get to;
  @override
  @JsonKey(name: 'condition')
  String? get condition;
  @override
  @JsonKey(name: 'priority')
  String? get priority;
  @override
  @JsonKey(ignore: true)
  _$$_NotificationInfoDTOCopyWith<_$_NotificationInfoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
