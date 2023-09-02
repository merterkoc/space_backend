// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotificationDTO _$$_NotificationDTOFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['eventId', 'title', 'body'],
  );
  return _$_NotificationDTO(
    eventId: json['eventId'] as String?,
    title: json['title'] as String?,
    body: json['body'] as String?,
    topics:
        (json['topics'] as List<dynamic>?)?.map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$$_NotificationDTOToJson(_$_NotificationDTO instance) =>
    <String, dynamic>{
      'eventId': instance.eventId,
      'title': instance.title,
      'body': instance.body,
      'topics': instance.topics,
    };
