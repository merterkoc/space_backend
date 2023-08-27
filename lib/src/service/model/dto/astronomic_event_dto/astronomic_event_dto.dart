import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:space_backend/src/service/model/dto/coordinate_dto/coordinate_dto.dart';

part 'astronomic_event_dto.freezed.dart';

part 'astronomic_event_dto.g.dart';

@freezed
@immutable
class AstronomicEventDTO with _$AstronomicEventDTO {
  @JsonSerializable(explicitToJson: true, createToJson: true)
  factory AstronomicEventDTO({
    @JsonKey(name: 'name', required: true) final String? name,
    @JsonKey(name: 'description', required: true) final String? description,
    @JsonKey(name: 'start_date', required: true) final DateTime? startDate,
    @JsonKey(name: 'end_date', required: true) final DateTime? endDate,
    @JsonKey(name: 'coordinate', required: true)
    final CoordinateDTO? coordinate,
    @JsonKey(name: 'type') final String? type,
    @JsonKey(name: 'image') final List<String>? image,
  }) = _AstronomicEventDTO;

  factory AstronomicEventDTO.fromJson(Map<String, Object?> json) =>
      _$AstronomicEventDTOFromJson(json);
}
