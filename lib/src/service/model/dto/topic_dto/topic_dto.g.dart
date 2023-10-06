// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topic_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TopicDTO _$$_TopicDTOFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['key', 'coordinate'],
    disallowNullValues: const ['key', 'coordinate'],
  );
  return _$_TopicDTO(
    key: json['key'] as String,
    coordinate:
        CoordinateDTO.fromJson(json['coordinate'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$$_TopicDTOToJson(_$_TopicDTO instance) =>
    <String, dynamic>{
      'key': instance.key,
      'coordinate': instance.coordinate.toJson(),
    };
