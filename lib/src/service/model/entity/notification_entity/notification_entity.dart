import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mongo_pool/mongo_pool.dart';
import 'package:space_backend/src/service/model/dto/coordinate_dto/coordinate_dto.dart';

part 'notification_entity.freezed.dart';

part 'notification_entity.g.dart';

@freezed
@immutable
class NotificationEntity with _$NotificationEntity {
  @JsonSerializable(explicitToJson: true, createToJson: true)
  factory NotificationEntity({
    @JsonKey(name: 'eventId', required: true) required String eventId,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'body') String? body,
  }) = _NotificationEntity;

  factory NotificationEntity.fromJson(Map<String, Object?> json) =>
      _$NotificationEntityFromJson(json);
}
