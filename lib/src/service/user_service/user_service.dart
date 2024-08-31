import 'package:space_backend/src/core/dio/model/response_entity.dart';
import 'package:space_backend/src/repository/user_repository.dart';
import 'package:space_backend/src/service/model/dto/user_info_dto/user_info_dto.dart';
import 'package:space_backend/src/service/model/entity/user_entity/user_entity.dart';
import 'package:space_backend/src/service/model/mapper/user_info_mapper.dart';

class UserService {
  UserService() {
    _userRepository = UserRepository();
  }

  late final UserRepository _userRepository;

  Future<ResponseEntity<UserInfoDto>> getUserInfo(String id) async {
    final response = await _userRepository.getUserInfo(id);
    try {
      final userInfo = UserInfoMapper().from(response.data!);
      return ResponseEntity<UserInfoDto>(
        statusCode: response.statusCode,
        data: userInfo,
        message: response.message,
      );
    } catch (e) {
      return ResponseEntity(
        statusCode: response.statusCode,
        message: response.message,
      );
    }
  }
}
