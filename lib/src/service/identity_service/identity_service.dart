import 'dart:async';
import 'dart:io';

import 'package:space_backend/src/core/dio/model/response_entity.dart';
import 'package:space_backend/src/repository/identity_repository.dart';
import 'package:space_backend/src/service/model/dto/user_dto/user_dto.dart';
import 'package:space_backend/src/service/model/entity/user_entity/user_entity.dart';

class IdentityService {
  IdentityService() {
    _identityRepository = IdentityRepository();
  }

  late final IdentityRepository _identityRepository;

  Future<ResponseEntity<dynamic>> signUp(
    UserDTO userDTO,
  ) async {
    UserEntity userEntity;
    try {
      userEntity = UserEntity.fromJson(userDTO.toJson());
    } catch (e) {
      return ResponseEntity(
        statusCode: HttpStatus.badRequest,
        message: 'JSON parse error: $e',
      );
    }
    final result = await _identityRepository.signUp<void>(userEntity).onError(
          (error, stackTrace) => ResponseEntity(
            statusCode: HttpStatus.badRequest,
            message: error.toString(),
          ),
        );
    return result;
  }

  Future<ResponseEntity<dynamic>> signIn(
    UserDTO userDTO,
  ) async {
    final result = await _identityRepository.signIn<void>(userDTO).onError(
          (error, stackTrace) => ResponseEntity(
            statusCode: HttpStatus.badRequest,
            message: error.toString(),
          ),
        );
    return result;
  }
}
