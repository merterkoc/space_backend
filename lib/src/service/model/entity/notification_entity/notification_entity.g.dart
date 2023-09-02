// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotificationEntity _$$_NotificationEntityFromJson(
    Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['eventId'],
  );
  return _$_NotificationEntity(
    eventId: json['eventId'] as String,
    title: json['title'] as String?,
    body: json['body'] as String?,
  );
}

Map<String, dynamic> _$$_NotificationEntityToJson(
        _$_NotificationEntity instance) =>
    <String, dynamic>{
      'eventId': instance.eventId,
      'title': instance.title,
      'body': instance.body,
    };
