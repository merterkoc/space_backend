// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'astronomic_event_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AstronomicEventEntity _$AstronomicEventEntityFromJson(
    Map<String, dynamic> json) {
  return _AstronomicEventEntity.fromJson(json);
}

/// @nodoc
mixin _$AstronomicEventEntity {
  @JsonKey(name: 'notification')
  List<String> get notification => throw _privateConstructorUsedError;
  @JsonKey(name: 'name', required: true)
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'description', required: true)
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_date', required: true)
  DateTime? get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_date', required: true)
  DateTime? get endDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'coordinate', required: true)
  CoordinateDTO? get coordinate => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  List<String>? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AstronomicEventEntityCopyWith<AstronomicEventEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AstronomicEventEntityCopyWith<$Res> {
  factory $AstronomicEventEntityCopyWith(AstronomicEventEntity value,
          $Res Function(AstronomicEventEntity) then) =
      _$AstronomicEventEntityCopyWithImpl<$Res, AstronomicEventEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'notification') List<String> notification,
      @JsonKey(name: 'name', required: true) String? name,
      @JsonKey(name: 'description', required: true) String? description,
      @JsonKey(name: 'start_date', required: true) DateTime? startDate,
      @JsonKey(name: 'end_date', required: true) DateTime? endDate,
      @JsonKey(name: 'coordinate', required: true) CoordinateDTO? coordinate,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'image') List<String>? image});

  $CoordinateDTOCopyWith<$Res>? get coordinate;
}

/// @nodoc
class _$AstronomicEventEntityCopyWithImpl<$Res,
        $Val extends AstronomicEventEntity>
    implements $AstronomicEventEntityCopyWith<$Res> {
  _$AstronomicEventEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notification = null,
    Object? name = freezed,
    Object? description = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? coordinate = freezed,
    Object? type = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      notification: null == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as List<String>,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      coordinate: freezed == coordinate
          ? _value.coordinate
          : coordinate // ignore: cast_nullable_to_non_nullable
              as CoordinateDTO?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CoordinateDTOCopyWith<$Res>? get coordinate {
    if (_value.coordinate == null) {
      return null;
    }

    return $CoordinateDTOCopyWith<$Res>(_value.coordinate!, (value) {
      return _then(_value.copyWith(coordinate: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AstronomicEventEntityCopyWith<$Res>
    implements $AstronomicEventEntityCopyWith<$Res> {
  factory _$$_AstronomicEventEntityCopyWith(_$_AstronomicEventEntity value,
          $Res Function(_$_AstronomicEventEntity) then) =
      __$$_AstronomicEventEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'notification') List<String> notification,
      @JsonKey(name: 'name', required: true) String? name,
      @JsonKey(name: 'description', required: true) String? description,
      @JsonKey(name: 'start_date', required: true) DateTime? startDate,
      @JsonKey(name: 'end_date', required: true) DateTime? endDate,
      @JsonKey(name: 'coordinate', required: true) CoordinateDTO? coordinate,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'image') List<String>? image});

  @override
  $CoordinateDTOCopyWith<$Res>? get coordinate;
}

/// @nodoc
class __$$_AstronomicEventEntityCopyWithImpl<$Res>
    extends _$AstronomicEventEntityCopyWithImpl<$Res, _$_AstronomicEventEntity>
    implements _$$_AstronomicEventEntityCopyWith<$Res> {
  __$$_AstronomicEventEntityCopyWithImpl(_$_AstronomicEventEntity _value,
      $Res Function(_$_AstronomicEventEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notification = null,
    Object? name = freezed,
    Object? description = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? coordinate = freezed,
    Object? type = freezed,
    Object? image = freezed,
  }) {
    return _then(_$_AstronomicEventEntity(
      notification: null == notification
          ? _value._notification
          : notification // ignore: cast_nullable_to_non_nullable
              as List<String>,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      coordinate: freezed == coordinate
          ? _value.coordinate
          : coordinate // ignore: cast_nullable_to_non_nullable
              as CoordinateDTO?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value._image
          : image // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, createToJson: true)
class _$_AstronomicEventEntity implements _AstronomicEventEntity {
  _$_AstronomicEventEntity(
      {@JsonKey(name: 'notification') required final List<String> notification,
      @JsonKey(name: 'name', required: true) this.name,
      @JsonKey(name: 'description', required: true) this.description,
      @JsonKey(name: 'start_date', required: true) this.startDate,
      @JsonKey(name: 'end_date', required: true) this.endDate,
      @JsonKey(name: 'coordinate', required: true) this.coordinate,
      @JsonKey(name: 'type') this.type,
      @JsonKey(name: 'image') final List<String>? image})
      : _notification = notification,
        _image = image;

  factory _$_AstronomicEventEntity.fromJson(Map<String, dynamic> json) =>
      _$$_AstronomicEventEntityFromJson(json);

  final List<String> _notification;
  @override
  @JsonKey(name: 'notification')
  List<String> get notification {
    if (_notification is EqualUnmodifiableListView) return _notification;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notification);
  }

  @override
  @JsonKey(name: 'name', required: true)
  final String? name;
  @override
  @JsonKey(name: 'description', required: true)
  final String? description;
  @override
  @JsonKey(name: 'start_date', required: true)
  final DateTime? startDate;
  @override
  @JsonKey(name: 'end_date', required: true)
  final DateTime? endDate;
  @override
  @JsonKey(name: 'coordinate', required: true)
  final CoordinateDTO? coordinate;
  @override
  @JsonKey(name: 'type')
  final String? type;
  final List<String>? _image;
  @override
  @JsonKey(name: 'image')
  List<String>? get image {
    final value = _image;
    if (value == null) return null;
    if (_image is EqualUnmodifiableListView) return _image;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AstronomicEventEntity(notification: $notification, name: $name, description: $description, startDate: $startDate, endDate: $endDate, coordinate: $coordinate, type: $type, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AstronomicEventEntity &&
            const DeepCollectionEquality()
                .equals(other._notification, _notification) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.coordinate, coordinate) ||
                other.coordinate == coordinate) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._image, _image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_notification),
      name,
      description,
      startDate,
      endDate,
      coordinate,
      type,
      const DeepCollectionEquality().hash(_image));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AstronomicEventEntityCopyWith<_$_AstronomicEventEntity> get copyWith =>
      __$$_AstronomicEventEntityCopyWithImpl<_$_AstronomicEventEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AstronomicEventEntityToJson(
      this,
    );
  }
}

abstract class _AstronomicEventEntity implements AstronomicEventEntity {
  factory _AstronomicEventEntity(
      {@JsonKey(name: 'notification') required final List<String> notification,
      @JsonKey(name: 'name', required: true) final String? name,
      @JsonKey(name: 'description', required: true) final String? description,
      @JsonKey(name: 'start_date', required: true) final DateTime? startDate,
      @JsonKey(name: 'end_date', required: true) final DateTime? endDate,
      @JsonKey(name: 'coordinate', required: true)
      final CoordinateDTO? coordinate,
      @JsonKey(name: 'type') final String? type,
      @JsonKey(name: 'image')
      final List<String>? image}) = _$_AstronomicEventEntity;

  factory _AstronomicEventEntity.fromJson(Map<String, dynamic> json) =
      _$_AstronomicEventEntity.fromJson;

  @override
  @JsonKey(name: 'notification')
  List<String> get notification;
  @override
  @JsonKey(name: 'name', required: true)
  String? get name;
  @override
  @JsonKey(name: 'description', required: true)
  String? get description;
  @override
  @JsonKey(name: 'start_date', required: true)
  DateTime? get startDate;
  @override
  @JsonKey(name: 'end_date', required: true)
  DateTime? get endDate;
  @override
  @JsonKey(name: 'coordinate', required: true)
  CoordinateDTO? get coordinate;
  @override
  @JsonKey(name: 'type')
  String? get type;
  @override
  @JsonKey(name: 'image')
  List<String>? get image;
  @override
  @JsonKey(ignore: true)
  _$$_AstronomicEventEntityCopyWith<_$_AstronomicEventEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
