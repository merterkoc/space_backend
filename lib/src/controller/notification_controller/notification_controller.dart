import 'package:dart_frog/dart_frog.dart';
import 'package:space_backend/src/core/dio/model/response_entity.dart';
import 'package:space_backend/src/repository/astronomic_event_repository.dart';
import 'package:space_backend/src/service/model/dto/astronomic_event_dto/astronomic_event_dto.dart';
import 'package:space_backend/src/service/model/dto/notification_dto/notification_dto.dart';
import 'package:space_backend/src/service/notification_service/notification_service.dart';
import 'package:space_backend/src/util/extension/request_extension.dart';

class NotificationController {
  Future<Response> postNotification(RequestContext context) async {
    final body = await context.request.json();
    NotificationDTO? data;
    try {
      data = NotificationDTO.fromJson(body as Map<String, dynamic>);
    } catch (e) {
      return Response().badRequest(message: 'JSON parse error: $e');
    }

    final astronomicEventDTO = AstronomicEventDTO.fromJson(
      (await AstronomicEventRepository().getAstronomicEventById(data.eventId!))
          as Map<String, Object?>,
    );
    final response = await NotificationService()
        .saveAndSendNotification(data, astronomicEventDTO);

    return Response.json(
      statusCode: response.statusCode,
      body: ResponseEntity.toJson(response),
    );
  }
}
