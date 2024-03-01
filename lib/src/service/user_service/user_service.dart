import 'package:space_backend/src/core/dio/model/response_entity.dart';
import 'package:space_backend/src/repository/user_repository.dart';
import 'package:space_backend/src/service/model/entity/user_entity/user_entity.dart';

class UserService {
  UserService() {
    _userRepository = UserRepository();
  }

  late final UserRepository _userRepository;

  Future<ResponseEntity<UserEntity>> getUserInfo(String id) async {
    // TODO(mert): add mapping
    final response = await _userRepository.getUserInfo(id);
    return response;
  }
}
