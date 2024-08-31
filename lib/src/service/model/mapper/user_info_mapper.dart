import 'package:space_backend/src/service/model/dto/astronomic_event_dto/astronomic_event_dto.dart';
import 'package:space_backend/src/service/model/dto/user_info_dto/user_info_dto.dart';
import 'package:space_backend/src/service/model/entity/astronomic_event_entity/astronomic_event_entity.dart';
import 'package:space_backend/src/service/model/entity/user_entity/user_entity.dart';
import 'package:space_backend/src/util/mapper/mapper.dart';

class UserInfoMapper with Mapper<UserInfoDto, UserEntity> {
  @override
  UserEntity call(UserInfoDto object) {
    throw UnimplementedError();
  }

  @override
  UserInfoDto from(UserEntity object) {
    return UserInfoDto(
      email: object.email,
      name: object.name,
      avatar: object.avatar!,
      createdAt: object.createdAt,
    );
  }
}
