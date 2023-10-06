// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topic_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TopicEntity _$$_TopicEntityFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['key', 'coordinate'],
    disallowNullValues: const ['key', 'coordinate'],
  );
  return _$_TopicEntity(
    key: json['key'] as String,
    coordinate:
        CoordinateDTO.fromJson(json['coordinate'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$$_TopicEntityToJson(_$_TopicEntity instance) =>
    <String, dynamic>{
      'key': instance.key,
      'coordinate': instance.coordinate.toJson(),
    };
