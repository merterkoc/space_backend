import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:space_backend/src/service/model/enum/event_category.dart';

part 'event_category_dto.freezed.dart';

part 'event_category_dto.g.dart';

@freezed
@immutable
class EventCategoryDTO with _$EventCategoryDTO {
  @JsonSerializable(explicitToJson: true, createToJson: true)
  factory EventCategoryDTO({
    @JsonKey(name: 'categories', required: true)
    required List<EventCategory>? categories,
  }) = _EventCategoryDTO;

  factory EventCategoryDTO.fromJson(Map<String, Object?> json) =>
      _$EventCategoryDTOFromJson(json);
}
