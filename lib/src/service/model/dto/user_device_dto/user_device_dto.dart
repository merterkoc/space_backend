import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:space_backend/src/service/model/dto/coordinate_dto/coordinate_dto.dart';

part 'user_device_dto.freezed.dart';

part 'user_device_dto.g.dart';

@freezed
@immutable
class UserDeviceDTO with _$UserDeviceDTO {
  @JsonSerializable(explicitToJson: true, createToJson: true)
  factory UserDeviceDTO({
    @JsonKey(name: 'fcmToken', required: true) String? fcmToken,
    @JsonKey(name: 'coordinate') CoordinateDTO? coordinate,
  }) = _UserDeviceDTO;

  factory UserDeviceDTO.fromJson(Map<String, Object?> json) =>
      _$UserDeviceDTOFromJson(json);
}
