import 'dart:async';
import 'dart:io';

import 'package:space_backend/src/core/dio/model/response_entity.dart';
import 'package:space_backend/src/core/dio/util/oauth2token/oauth2token.dart';
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
    if (result.statusCode == HttpStatus.ok) {
      final response = await signIn(userDTO);
      return response;
    }
    return result;
  }

  Future<ResponseEntity<dynamic>> signIn(
    UserDTO userDTO,
  ) async {
    final result = await _identityRepository.signIn<String>(userDTO).onError(
          (error, stackTrace) => ResponseEntity(
            statusCode: HttpStatus.badRequest,
            message: error.toString(),
          ),
        );
    return ResponseEntity(
      statusCode: result.statusCode,
      message: result.message,
      data: OAuth2Token(
        accessToken: result.data.toString(),
        tokenType: 'Bearer',
        // TODO(mert): From token please!
        expiresIn: 3600,
      ),
    );
  }
}
