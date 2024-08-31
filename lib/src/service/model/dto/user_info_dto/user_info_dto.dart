import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_info_dto.freezed.dart';

part 'user_info_dto.g.dart';

@freezed
@immutable
class UserInfoDto with _$UserInfoDto {
  @JsonSerializable(explicitToJson: true, createToJson: true)
  factory UserInfoDto({
    @JsonKey(name: 'email', required: true, disallowNullValue: true)
    required String email,
    @JsonKey(name: 'name', required: false)
    String? name,
    @JsonKey(name: 'avatar', required: true, disallowNullValue: true)
    required String avatar,
    @JsonKey(name: 'createdAt', required: true, disallowNullValue: true)
    required DateTime? createdAt,
  }) = _UserInfoDto;

  factory UserInfoDto.fromJson(Map<String, Object?> json) =>
      _$UserInfoDtoFromJson(json);
}
