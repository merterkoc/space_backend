import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';

part 'user_entity.g.dart';

@freezed
@immutable
class UserEntity with _$UserEntity {
  @JsonSerializable(explicitToJson: true, createToJson: true)
  factory UserEntity({
    @JsonKey(name: 'name', required: true, disallowNullValue: true)
    required String name,
    @JsonKey(name: 'email', required: true, disallowNullValue: true)
    required String email,
    @JsonKey(name: 'password', required: true, disallowNullValue: true)
    required String password,
  }) = _UserEntity;

  factory UserEntity.fromJson(Map<String, Object?> json) =>
      _$UserEntityFromJson(json);
}
