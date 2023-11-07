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
    disallowNullValues: const ['_id', 'notification'],
  );
  return _$_AstronomicEventEntity(
    id: MongoHelper.getObjectId(json['_id'] as ObjectId?),
    notification: MongoHelper.getObjectIdList(json['notification'] as List?),
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
    _$_AstronomicEventEntity instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_id', instance.id);
  writeNotNull('notification', instance.notification);
  val['name'] = instance.name;
  val['description'] = instance.description;
  val['start_date'] = instance.startDate?.toIso8601String();
  val['end_date'] = instance.endDate?.toIso8601String();
  val['coordinate'] = instance.coordinate?.toJson();
  val['type'] = instance.type;
  val['image'] = instance.image;
  return val;
}
