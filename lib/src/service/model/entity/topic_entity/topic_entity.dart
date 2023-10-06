import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:space_backend/src/service/model/dto/coordinate_dto/coordinate_dto.dart';

part 'topic_entity.freezed.dart';

part 'topic_entity.g.dart';

@freezed
@immutable
class TopicEntity with _$TopicEntity {
  @JsonSerializable(explicitToJson: true, createToJson: true)
  factory TopicEntity({
    @JsonKey(name: 'key', required: true, disallowNullValue: true)
    required String key,
    @JsonKey(name: 'coordinate', required: true, disallowNullValue: true)
    required CoordinateDTO coordinate,
  }) = _TopicEntity;

  factory TopicEntity.fromJson(Map<String, Object?> json) =>
      _$TopicEntityFromJson(json);
}
