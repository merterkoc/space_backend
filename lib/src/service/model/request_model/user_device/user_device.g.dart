// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_device.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDevice _$$_UserDeviceFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['fcmToken'],
  );
  return _$_UserDevice(
    fcmToken: json['fcmToken'] as String? ?? 'DASDSA',
    coordinate: json['coordinate'] == null
        ? null
        : Coordinate.fromJson(json['coordinate'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$$_UserDeviceToJson(_$_UserDevice instance) =>
    <String, dynamic>{
      'fcmToken': instance.fcmToken,
      'coordinate': instance.coordinate?.toJson(),
    };
