// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coordinate_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CoordinateDTO _$$_CoordinateDTOFromJson(Map<String, dynamic> json) =>
    _$_CoordinateDTO(
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_CoordinateDTOToJson(_$_CoordinateDTO instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
