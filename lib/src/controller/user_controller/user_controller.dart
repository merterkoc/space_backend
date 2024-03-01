import 'package:dart_frog/dart_frog.dart';
import 'package:space_backend/src/core/dio/model/response_entity.dart';
import 'package:space_backend/src/repository/user_repository.dart';
import 'package:space_backend/src/service/model/dto/user_device_dto/user_device_dto.dart';
import 'package:space_backend/src/service/user_service/user_service.dart';
import 'package:space_backend/src/util/extension/request_extension.dart';
import 'package:space_backend/src/util/extension/response_extension.dart';

class UserController {
  Future<Response> postUserDevice(RequestContext context) async {
    final body = await context.request.json();
    UserDeviceDTO? data;
    try {
      data = UserDeviceDTO.fromJson(body as Map<String, dynamic>);
    } catch (e) {
      return Response().badRequest(message: 'JSON parse error: $e');
    }

    final response = await UserRepository().postUserDevice<dynamic>(data);
    return Response.json(
      statusCode: response.data == null ? 400 : 200,
      body: ResponseEntity.toJson(response),
    );
  }

  Future<Response> getUserInfo(RequestContext context) async {
    try {
      final id = context.request.userId;
      if (id == null) {
        return Response().badRequest(message: 'Id is required');
      }
      final response = await UserService().getUserInfo(id);
      return Response.json(
        statusCode: response.data == null ? 400 : 200,
        body: ResponseEntity.toJson(response),
      );
    } catch (e) {
      return Response().badRequest(message: 'Error: $e');
    }
  }
}
