// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_device_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDeviceDTO _$$_UserDeviceDTOFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['fcmToken'],
  );
  return _$_UserDeviceDTO(
    fcmToken: json['fcmToken'] as String?,
    coordinate: json['coordinate'] == null
        ? null
        : CoordinateDTO.fromJson(json['coordinate'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$$_UserDeviceDTOToJson(_$_UserDeviceDTO instance) =>
    <String, dynamic>{
      'fcmToken': instance.fcmToken,
      'coordinate': instance.coordinate?.toJson(),
    };
