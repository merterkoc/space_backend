// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NotificationDTO _$NotificationDTOFromJson(Map<String, dynamic> json) {
  return _NotificationDTO.fromJson(json);
}

/// @nodoc
mixin _$NotificationDTO {
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'body')
  String? get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationDTOCopyWith<NotificationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationDTOCopyWith<$Res> {
  factory $NotificationDTOCopyWith(
          NotificationDTO value, $Res Function(NotificationDTO) then) =
      _$NotificationDTOCopyWithImpl<$Res, NotificationDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'body') String? body});
}

/// @nodoc
class _$NotificationDTOCopyWithImpl<$Res, $Val extends NotificationDTO>
    implements $NotificationDTOCopyWith<$Res> {
  _$NotificationDTOCopyWithImpl(this._value, this._then);

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
abstract class _$$_NotificationDTOCopyWith<$Res>
    implements $NotificationDTOCopyWith<$Res> {
  factory _$$_NotificationDTOCopyWith(
          _$_NotificationDTO value, $Res Function(_$_NotificationDTO) then) =
      __$$_NotificationDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'body') String? body});
}

/// @nodoc
class __$$_NotificationDTOCopyWithImpl<$Res>
    extends _$NotificationDTOCopyWithImpl<$Res, _$_NotificationDTO>
    implements _$$_NotificationDTOCopyWith<$Res> {
  __$$_NotificationDTOCopyWithImpl(
      _$_NotificationDTO _value, $Res Function(_$_NotificationDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? body = freezed,
  }) {
    return _then(_$_NotificationDTO(
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
class _$_NotificationDTO implements _NotificationDTO {
  _$_NotificationDTO(
      {@JsonKey(name: 'title') this.title, @JsonKey(name: 'body') this.body});

  factory _$_NotificationDTO.fromJson(Map<String, dynamic> json) =>
      _$$_NotificationDTOFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'body')
  final String? body;

  @override
  String toString() {
    return 'NotificationDTO(title: $title, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotificationDTO &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotificationDTOCopyWith<_$_NotificationDTO> get copyWith =>
      __$$_NotificationDTOCopyWithImpl<_$_NotificationDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotificationDTOToJson(
      this,
    );
  }
}

abstract class _NotificationDTO implements NotificationDTO {
  factory _NotificationDTO(
      {@JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'body') final String? body}) = _$_NotificationDTO;

  factory _NotificationDTO.fromJson(Map<String, dynamic> json) =
      _$_NotificationDTO.fromJson;

  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'body')
  String? get body;
  @override
  @JsonKey(ignore: true)
  _$$_NotificationDTOCopyWith<_$_NotificationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}