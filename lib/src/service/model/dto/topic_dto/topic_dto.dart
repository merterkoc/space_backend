import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:space_backend/src/service/model/dto/coordinate_dto/coordinate_dto.dart';

part 'topic_dto.freezed.dart';

part 'topic_dto.g.dart';

@freezed
@immutable
class TopicDTO with _$TopicDTO {
  @JsonSerializable(explicitToJson: true, createToJson: true)
  factory TopicDTO({
    @JsonKey(name: 'key', required: true, disallowNullValue: true)
    required String key,
    @JsonKey(name: 'coordinate', required: true, disallowNullValue: true)
    required CoordinateDTO coordinate,
  }) = _TopicDTO;

  factory TopicDTO.fromJson(Map<String, Object?> json) =>
      _$TopicDTOFromJson(json);
}
