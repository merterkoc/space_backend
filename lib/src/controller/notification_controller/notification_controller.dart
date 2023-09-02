import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:space_backend/src/core/dio/model/response_entity.dart';
import 'package:space_backend/src/repository/notification_repository.dart';
import 'package:space_backend/src/service/model/dto/notification_dto/notification_dto.dart';
import 'package:space_backend/src/service/model/mapper/notification_mapper.dart';
import 'package:space_backend/src/util/extension/request_extension.dart';

class NotificationController {
  Future<Response> postNotification(RequestContext context) async {
    final body = await context.request.json();
    NotificationDTO? data;
    try {
      data = NotificationDTO.fromJson(body as Map<String, dynamic>);
    } catch (e) {
      return Response().badRequest('JSON parse error: $e');
    }

    final response = await NotificationRepository()
        .saveNotification<dynamic>(NotificationMapper().call(data))
        .onError(
          (error, stackTrace) => ResponseEntity<dynamic>(
            statusCode: HttpStatus.badRequest,
            message: error.toString(),
          ),
        );
    return Response.json(
      statusCode: response.statusCode,
      body: ResponseEntity.toJson(response),
    );
  }
}
