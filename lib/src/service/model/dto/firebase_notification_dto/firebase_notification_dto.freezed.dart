// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firebase_notification_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FirebaseNotificationDTO _$FirebaseNotificationDTOFromJson(
    Map<String, dynamic> json) {
  return _FirebaseNotificationDTO.fromJson(json);
}

/// @nodoc
mixin _$FirebaseNotificationDTO {
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'body')
  String? get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FirebaseNotificationDTOCopyWith<FirebaseNotificationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirebaseNotificationDTOCopyWith<$Res> {
  factory $FirebaseNotificationDTOCopyWith(FirebaseNotificationDTO value,
          $Res Function(FirebaseNotificationDTO) then) =
      _$FirebaseNotificationDTOCopyWithImpl<$Res, FirebaseNotificationDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'body') String? body});
}

/// @nodoc
class _$FirebaseNotificationDTOCopyWithImpl<$Res,
        $Val extends FirebaseNotificationDTO>
    implements $FirebaseNotificationDTOCopyWith<$Res> {
  _$FirebaseNotificationDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$_FirebaseNotificationDTOCopyWith<$Res>
    implements $FirebaseNotificationDTOCopyWith<$Res> {
  factory _$$_FirebaseNotificationDTOCopyWith(_$_FirebaseNotificationDTO value,
          $Res Function(_$_FirebaseNotificationDTO) then) =
      __$$_FirebaseNotificationDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'body') String? body});
}

/// @nodoc
class __$$_FirebaseNotificationDTOCopyWithImpl<$Res>
    extends _$FirebaseNotificationDTOCopyWithImpl<$Res,
        _$_FirebaseNotificationDTO>
    implements _$$_FirebaseNotificationDTOCopyWith<$Res> {
  __$$_FirebaseNotificationDTOCopyWithImpl(_$_FirebaseNotificationDTO _value,
      $Res Function(_$_FirebaseNotificationDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? body = freezed,
  }) {
    return _then(_$_FirebaseNotificationDTO(
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
class _$_FirebaseNotificationDTO implements _FirebaseNotificationDTO {
  _$_FirebaseNotificationDTO(
      {@JsonKey(name: 'title') this.title, @JsonKey(name: 'body') this.body});

  factory _$_FirebaseNotificationDTO.fromJson(Map<String, dynamic> json) =>
      _$$_FirebaseNotificationDTOFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'body')
  final String? body;

  @override
  String toString() {
    return 'FirebaseNotificationDTO(title: $title, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FirebaseNotificationDTO &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FirebaseNotificationDTOCopyWith<_$_FirebaseNotificationDTO>
      get copyWith =>
          __$$_FirebaseNotificationDTOCopyWithImpl<_$_FirebaseNotificationDTO>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FirebaseNotificationDTOToJson(
      this,
    );
  }
}

abstract class _FirebaseNotificationDTO implements FirebaseNotificationDTO {
  factory _FirebaseNotificationDTO(
      {@JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'body') final String? body}) = _$_FirebaseNotificationDTO;

  factory _FirebaseNotificationDTO.fromJson(Map<String, dynamic> json) =
      _$_FirebaseNotificationDTO.fromJson;

  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'body')
  String? get body;
  @override
  @JsonKey(ignore: true)
  _$$_FirebaseNotificationDTOCopyWith<_$_FirebaseNotificationDTO>
      get copyWith => throw _privateConstructorUsedError;
}
