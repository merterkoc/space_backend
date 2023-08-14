import 'package:freezed_annotation/freezed_annotation.dart';

import '../coordinate/coordinate.dart';

part 'user_device.freezed.dart';
part 'user_device.g.dart';

@freezed
class UserDevice with _$UserDevice {
  @JsonSerializable(explicitToJson: true, createToJson: true)
  factory UserDevice({
    @JsonKey(name: 'fcmToken', defaultValue: 'DASDSA', required: true)
    final String? fcmToken,
    @JsonKey(name: 'coordinate') final Coordinate? coordinate,
  }) = _UserDevice;

  factory UserDevice.fromJson(Map<String, Object?> json) =>
      _$UserDeviceFromJson(json);
}
