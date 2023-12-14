import 'package:mongo_pool/mongo_pool.dart';
import 'package:space_backend/src/core/dio/model/response_entity.dart';
import 'package:space_backend/src/repository/base_repository/base_repository.dart';
import 'package:space_backend/src/service/model/dto/user_dto/user_dto.dart';
import 'package:space_backend/src/service/model/entity/user_entity/user_entity.dart';
import 'package:space_backend/src/util/helper/mongo_helper.dart';

class IdentityRepository with BaseRepository {
  Future<ResponseEntity<T>> signUp<T>(UserEntity userEntity) async {
    final userCollection =
        await mongoClient.findOne('user', where.eq('email', userEntity.email));

    if (userCollection != null) {
      return ResponseEntity(
        statusCode: 400,
        message: 'User already exists',
      );
    }

    final user = userEntity.copyWith(
      password: MongoHelper.hashPassword(userEntity.password),
    );

    final result = await mongoClient.insertOne(
      'user',
      user.toJson(),
    );
    return ResponseEntity(
      statusCode: result.ok == 1 ? 200 : 400,
      data: result.id as T,
      message: result.errmsg,
    );
  }

  Future<ResponseEntity<T>> signIn<T>(UserDTO userEntity) async {
    final foundUser =
        await mongoClient.findOne('user', where.eq('email', userEntity.email));

    if (foundUser == null) {
      return ResponseEntity(
        statusCode: 400,
        message: 'User not found',
      );
    }

    final user = UserEntity.fromJson(foundUser);
    if (!MongoHelper.comparePassword(userEntity.password, user.password)) {
      return ResponseEntity(
        statusCode: 400,
        message: 'Password is incorrect',
      );
    }
    final foundUserId = (foundUser['_id'] as ObjectId).$oid;

    // 12.
    final token = MongoHelper.issueToken(foundUserId);

    return ResponseEntity(
      statusCode: 200,
      data: token as T,
    );
  }
}
