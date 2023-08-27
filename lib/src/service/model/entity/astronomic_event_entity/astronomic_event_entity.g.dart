// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'astronomic_event_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AstronomicEventEntity _$$_AstronomicEventEntityFromJson(
    Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const [
      'name',
      'description',
      'start_date',
      'end_date',
      'coordinate'
    ],
  );
  return _$_AstronomicEventEntity(
    name: json['name'] as String?,
    description: json['description'] as String?,
    startDate: json['start_date'] == null
        ? null
        : DateTime.parse(json['start_date'] as String),
    endDate: json['end_date'] == null
        ? null
        : DateTime.parse(json['end_date'] as String),
    coordinate: json['coordinate'] == null
        ? null
        : CoordinateDTO.fromJson(json['coordinate'] as Map<String, dynamic>),
    type: json['type'] as String?,
    image: (json['image'] as List<dynamic>?)?.map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$$_AstronomicEventEntityToJson(
        _$_AstronomicEventEntity instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'start_date': instance.startDate?.toIso8601String(),
      'end_date': instance.endDate?.toIso8601String(),
      'coordinate': instance.coordinate?.toJson(),
      'type': instance.type,
      'image': instance.image,
    };
