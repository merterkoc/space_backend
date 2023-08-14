import 'package:dart_frog/dart_frog.dart';

import 'package:space_backend/src/core/dio/model/response_entity.dart';
import 'package:space_backend/src/repository/firebase_repository.dart';
import 'package:space_backend/src/service/model/request_model/notification_info.dart';

class FirebaseController {
  Future<Response> sendNotification(RequestContext context) async {
    final body = await context.request.json();
    final notificationInfo =
        NotificationInfo.fromJson(body as Map<String, dynamic>);
    final response = await FirebaseRepository()
        .sendNotification<Map<String, dynamic>>(notificationInfo);
    return Response.json(
      statusCode: response.statusCode,
      body: ResponseEntity.toJson(response),
    );
  }
}
