import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:space_backend/src/service/model/dto/notification_dto/notification_dto.dart';

part 'notification_info_dto.freezed.dart';

part 'notification_info_dto.g.dart';

@freezed
@immutable
class NotificationInfoDTO with _$NotificationInfoDTO {
  @JsonSerializable(explicitToJson: true, createToJson: true)
  factory NotificationInfoDTO({
    @JsonKey(name: 'notification', required: true) final NotificationDTO? notification,
    @JsonKey(name: 'to') final String? to,
    @JsonKey(name: 'priority') final String? priority,
  }) = _NotificationInfoDTO;

  factory NotificationInfoDTO.fromJson(Map<String, Object?> json) =>
      _$NotificationInfoDTOFromJson(json);
}
