import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_dto.freezed.dart';

part 'notification_dto.g.dart';

@freezed
@immutable
class NotificationDTO with _$NotificationDTO {
  @JsonSerializable(explicitToJson: true, createToJson: true)
  factory NotificationDTO({
    @JsonKey(name: 'sent', defaultValue: false) required bool sent,
    @JsonKey(name: 'eventId', required: true) String? eventId,
    @JsonKey(name: 'title', required: true) String? title,
    @JsonKey(name: 'body', required: true) String? body,
  }) = _NotificationDTO;

  factory NotificationDTO.fromJson(Map<String, Object?> json) =>
      _$NotificationDTOFromJson(json);
}
