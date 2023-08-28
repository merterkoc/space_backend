import 'package:freezed_annotation/freezed_annotation.dart';

part 'coordinate_dto.freezed.dart';

part 'coordinate_dto.g.dart';

@freezed
@immutable
class CoordinateDTO with _$CoordinateDTO {
  @JsonSerializable(explicitToJson: true, createToJson: true)
  factory CoordinateDTO({
    @JsonKey(name: 'latitude') double? latitude,
    @JsonKey(name: 'longitude') double? longitude,
  }) = _CoordinateDTO;

  factory CoordinateDTO.fromJson(Map<String, Object?> json) =>
      _$CoordinateDTOFromJson(json);
}
