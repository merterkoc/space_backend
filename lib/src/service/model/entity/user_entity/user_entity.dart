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
    @JsonKey(name: 'role', required: false, disallowNullValue: true)
    String? role,
    @JsonKey(name: 'avatar', required: false, disallowNullValue: true)
    String? avatar,
    @JsonKey(name: 'bio', required: false, disallowNullValue: true)
    String? bio,
    @JsonKey(name: 'location', required: false, disallowNullValue: true)
    String? location,
  }) = _UserEntity;

  factory UserEntity.fromJson(Map<String, Object?> json) =>
      _$UserEntityFromJson(json);
}
