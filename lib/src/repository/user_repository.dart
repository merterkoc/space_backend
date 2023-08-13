import 'package:space_backend/src/core/dio/model/response_entity.dart';
import 'package:space_backend/src/repository/base_repository/base_repository.dart';
import 'package:space_backend/src/service/model/request_model/user_device/user_device.dart';

class UserRepository with BaseRepository {
  Future<ResponseEntity<T>> postUserDevice<T>(UserDevice userDevice) async {
    final result = await mongoClient.insertOne(
      'user',
      userDevice.toJson(),
    );
    return ResponseEntity(
      statusCode: result.ok == 1 ? 200 : 400,
      data: result.id as T,
      message: result.errmsg,
    );
  }
}
