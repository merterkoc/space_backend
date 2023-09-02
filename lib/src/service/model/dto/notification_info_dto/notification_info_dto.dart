import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:space_backend/src/service/model/dto/firebase_notification_dto/firebase_notification_dto.dart';

part 'notification_info_dto.freezed.dart';

part 'notification_info_dto.g.dart';

@freezed
@immutable
class NotificationInfoDTO with _$NotificationInfoDTO {
  @JsonSerializable(explicitToJson: true, createToJson: true)
  factory NotificationInfoDTO({
    @JsonKey(name: 'notification', required: true)
    FirebaseNotificationDTO? notification,
    @JsonKey(name: 'to') String? to,
    @JsonKey(name: 'priority') String? priority,
  }) = _NotificationInfoDTO;

  factory NotificationInfoDTO.fromJson(Map<String, Object?> json) =>
      _$NotificationInfoDTOFromJson(json);
}
