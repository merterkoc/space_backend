import 'package:mongo_pool/mongo_pool.dart';
import 'package:space_backend/src/core/dio/model/response_entity.dart';
import 'package:space_backend/src/repository/base_repository/base_repository.dart';
import 'package:space_backend/src/service/model/dto/user_device_dto/user_device_dto.dart';
import 'package:space_backend/src/service/model/entity/user_entity/user_entity.dart';

class UserRepository with BaseRepository {
  Future<ResponseEntity<T>> postUserDevice<T>(UserDeviceDTO userDevice) async {
    final result = await mongoClient.insertOne(
      'fcm_token',
      userDevice.toJson(),
    );
    return ResponseEntity(
      statusCode: result.ok == 1 ? 200 : 400,
      data: result.id as T,
      message: result.errmsg,
    );
  }

  Future<ResponseEntity<UserEntity>> getUserInfo(String id) async {
    final result =
        await mongoClient.findOne('user', where.id(ObjectId.parse(id)));
    final userEntity = UserEntity.fromJson(result!);
    return ResponseEntity(
      statusCode: 200,
      data: userEntity,
    );
  }
}
