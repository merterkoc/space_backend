import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dto.freezed.dart';

part 'user_dto.g.dart';

@freezed
@immutable
class UserDTO with _$UserDTO {
  @JsonSerializable(explicitToJson: true, createToJson: true)
  factory UserDTO({
    @JsonKey(name: 'email', required: true, disallowNullValue: true)
    required String email,
    @JsonKey(name: 'password', required: true, disallowNullValue: true)
    required String password,
    @JsonKey(name: 'name', required: false)
    String? name,
  }) = _UserDTO;

  factory UserDTO.fromJson(Map<String, Object?> json) =>
      _$UserDTOFromJson(json);
}
