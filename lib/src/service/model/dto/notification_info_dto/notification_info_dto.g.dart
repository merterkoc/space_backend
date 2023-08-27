// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotificationInfoDTO _$$_NotificationInfoDTOFromJson(
    Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['notification'],
  );
  return _$_NotificationInfoDTO(
    notification: json['notification'] == null
        ? null
        : NotificationDTO.fromJson(
            json['notification'] as Map<String, dynamic>),
    to: json['to'] as String?,
    priority: json['priority'] as String?,
  );
}

Map<String, dynamic> _$$_NotificationInfoDTOToJson(
        _$_NotificationInfoDTO instance) =>
    <String, dynamic>{
      'notification': instance.notification?.toJson(),
      'to': instance.to,
      'priority': instance.priority,
    };
