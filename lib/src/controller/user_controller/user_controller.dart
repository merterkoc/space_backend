import 'package:dart_frog/dart_frog.dart';
import 'package:space_backend/src/core/dio/model/response_entity.dart';
import 'package:space_backend/src/repository/user_repository.dart';
import 'package:space_backend/src/service/model/request_model/user_device/user_device.dart';

class UserController {
  Future<Response> postUserDevice(RequestContext context) async {
    final body = await context.request.json();
    UserDevice? data;
    try {
      data = requestControl(body);
    } on Exception catch (e) {
      return Response.json(
        statusCode: 400,
        body: ResponseEntity.toJson(
          ResponseEntity(
            statusCode: 400,
            message: e.toString(),
          ),
        ),
      );
    }

    final response = await UserRepository().postUserDevice<dynamic>(data);
    return Response.json(
      statusCode: response.data == null ? 400 : 200,
      body: ResponseEntity.toJson(response),
    );
  }

  UserDevice requestControl(Object? json) {
    if (json == null) {
      throw Exception('Request body is null');
    } else {
      return UserDevice.fromJson(json as Map<String, Object?>);
    }
  }
}
