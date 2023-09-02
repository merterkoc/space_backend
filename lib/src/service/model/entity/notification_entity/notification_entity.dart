import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_entity.freezed.dart';

part 'notification_entity.g.dart';

@freezed
@immutable
class NotificationEntity with _$NotificationEntity {
  @JsonSerializable(explicitToJson: true, createToJson: true)
  factory NotificationEntity({
    @JsonKey(name: 'eventId', required: true) required String eventId,
    @JsonKey(name: 'topics') required List<String> topics,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'body') String? body,
    @JsonKey(name: 'sent') bool? sent,
    @JsonKey(name: 'sentDate') DateTime? sentDate,
  }) = _NotificationEntity;

  factory NotificationEntity.fromJson(Map<String, Object?> json) =>
      _$NotificationEntityFromJson(json);
}
