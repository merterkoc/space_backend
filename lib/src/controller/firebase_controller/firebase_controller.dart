import 'package:dart_frog/dart_frog.dart';
import 'package:space_backend/src/core/dio/model/response_entity.dart';
import 'package:space_backend/src/repository/firebase_repository.dart';
import 'package:space_backend/src/service/model/dto/notification_info_dto/notification_info_dto.dart';
import 'package:space_backend/src/util/extension/request_extension.dart';

class FirebaseController {
  Future<Response> sendNotification(RequestContext context) async {
    final body = await context.request.json();
    NotificationInfoDTO data;
    try {
      data = NotificationInfoDTO.fromJson(body as Map<String, dynamic>);
    } catch (e) {
      return Response().badRequest(message: 'JSON parse error: $e');
    }
    final response =
        await FirebaseRepository().sendNotification<Map<String, dynamic>>(data);
    return Response.json(
      statusCode: response.statusCode,
      body: ResponseEntity.toJson(response),
    );
  }
}
