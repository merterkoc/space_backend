class ISSResponseEntity {
  ISSResponseEntity({required this.timestamp, this.issPositionEntity});

  ISSResponseEntity.failed();

  ISSResponseEntity.fromJson(Map<String, dynamic> json) {
    timestamp = json['timestamp'] as int;
    issPositionEntity = json['iss_position'] != null
        ? ISSPositionEntity.fromJson(
            json['iss_position'] as Map<String, dynamic>,
          )
        : null;
  }

  late final int timestamp;
  late final ISSPositionEntity? issPositionEntity;

  static Map<String, dynamic> toJson(ISSResponseEntity response) {
    final data = <String, dynamic>{};
    data['code'] = response.timestamp;
    data['iss_position'] = response.issPositionEntity;
    return data;
  }
}

class ISSPositionEntity {
  ISSPositionEntity({required this.latitude, required this.longitude});

  ISSPositionEntity.fromJson(
    Map<String, dynamic> json,
  ) {
    latitude = json['latitude'] as String;
    longitude = json['longitude'] as String;
  }

  late final String latitude;
  late final String longitude;

  static Map<String, dynamic> toJson(ISSPositionEntity response) {
    final data = <String, dynamic>{};
    data['latitude'] = response.latitude;
    data['longitude'] = response.longitude;
    return data;
  }

  @override
  String toString() {
    return 'ISSPositionEntity{latitude: $latitude, longitude: $longitude}';
  }
}
