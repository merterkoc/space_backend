// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotificationEntity _$$_NotificationEntityFromJson(
    Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['eventId', 'sent'],
  );
  return _$_NotificationEntity(
    eventId: json['eventId'] as String,
    topics: (json['topics'] as List<dynamic>).map((e) => e as String).toList(),
    sent: json['sent'] as bool? ?? false,
    title: json['title'] as String?,
    body: json['body'] as String?,
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
      'sent': instance.sent,
      'title': instance.title,
      'body': instance.body,
      'sentDate': instance.sentDate?.toIso8601String(),
    };
