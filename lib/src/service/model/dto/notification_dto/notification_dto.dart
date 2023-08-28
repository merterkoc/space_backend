import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_dto.freezed.dart';

part 'notification_dto.g.dart';

@freezed
@immutable
class NotificationDTO with _$NotificationDTO {
  @JsonSerializable(explicitToJson: true, createToJson: true)
  factory NotificationDTO({
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'body') String? body,
  }) = _NotificationDTO;

  factory NotificationDTO.fromJson(Map<String, Object?> json) =>
      _$NotificationDTOFromJson(json);
}
