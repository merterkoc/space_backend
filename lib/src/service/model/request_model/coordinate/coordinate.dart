import 'package:freezed_annotation/freezed_annotation.dart';

part 'coordinate.freezed.dart';
part 'coordinate.g.dart';

@freezed
class Coordinate with _$Coordinate {
  @JsonSerializable(explicitToJson: true, createToJson: true)
  factory Coordinate({
    @JsonKey(name: 'latitude') final double? latitude,
    @JsonKey(name: 'longitude') final double? longitude,
  }) = _Coordinate;

  factory Coordinate.fromJson(Map<String, Object?> json) =>
      _$CoordinateFromJson(json);
}
