import 'package:dart_frog/dart_frog.dart';

import '../../core/dio/model/response_entity.dart';
import '../../repository/firebase_repository.dart';
import '../../service/model/request_model/notification_info.dart';

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
