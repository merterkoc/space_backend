import 'package:dart_frog/dart_frog.dart';
import 'package:space_backend/src/core/dio/model/identity_response_entity.dart';
import 'package:space_backend/src/core/dio/model/response_entity.dart';
import 'package:space_backend/src/service/identity_service/identity_service.dart';
import 'package:space_backend/src/service/model/dto/user_dto/user_dto.dart';
import 'package:space_backend/src/util/extension/request_extension.dart';

class IdentityController {
  Future<Response> signUp(RequestContext context) async {
    final body = await context.request.json();
    UserDTO data;
    try {
      data = UserDTO.fromJson(body as Map<String, dynamic>);
    } catch (e) {
      return Response().badRequest(message: 'JSON parse error: $e');
    }
    final response = await IdentityService().signUp(data);
    return Response.json(
      statusCode: response.statusCode,
      body: ResponseEntity.toJson(response),
    );
  }

  Future<Response> login(RequestContext context) async {
    final body = await context.request.json();
    UserDTO data;
    try {
      data = UserDTO.fromJson(body as Map<String, dynamic>);
    } catch (e) {
      return Response().badRequest(message: 'JSON parse error: $e');
    }
    final response = await IdentityService().signIn(data);
    return Response.json(
      statusCode: response.statusCode,
      body: IdentityResponseEntity.toJson(response),
    );
  }
}
