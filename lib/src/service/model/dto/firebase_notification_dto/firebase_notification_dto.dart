import 'package:freezed_annotation/freezed_annotation.dart';

part 'firebase_notification_dto.freezed.dart';

part 'firebase_notification_dto.g.dart';

@freezed
@immutable
class FirebaseNotificationDTO with _$FirebaseNotificationDTO {
  @JsonSerializable(explicitToJson: true, createToJson: true)
  factory FirebaseNotificationDTO({
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'body') String? body,
  }) = _FirebaseNotificationDTO;

  factory FirebaseNotificationDTO.fromJson(Map<String, Object?> json) =>
      _$FirebaseNotificationDTOFromJson(json);
}
