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
    topics: (json['topics'] as List<dynamic>).map((e) => e as String).toList(),
    title: json['title'] as String?,
    body: json['body'] as String?,
    sent: json['sent'] as bool?,
    sentDate: json['sentDate'] == null
        ? null
        : DateTime.parse(json['sentDate'] as String),
  );
}

Map<String, dynamic> _$$_NotificationEntityToJson(
        _$_NotificationEntity instance) =>
    <String, dynamic>{
      'eventId': instance.eventId,
      'topics': instance.topics,
      'title': instance.title,
      'body': instance.body,
      'sent': instance.sent,
      'sentDate': instance.sentDate?.toIso8601String(),
    };
