import 'dart:io';

import 'package:mongo_pool/mongo_pool.dart';
import 'package:space_backend/src/core/dio/model/response_entity.dart';
import 'package:space_backend/src/repository/base_repository/base_repository.dart';
import 'package:space_backend/src/service/model/entity/notification_entity/notification_entity.dart';

class NotificationRepository with BaseRepository {
  Future<ResponseEntity<T>> saveNotification<T>(
    NotificationEntity notificationEntity,
  ) async {
    final astronomicEvent = await mongoClient.findOne(
      'astronomic_event',
      where.id(ObjectId.parse(notificationEntity.eventId)),
    );
    if (astronomicEvent == null) {
      return ResponseEntity(
        statusCode: HttpStatus.badRequest,
        message: 'Astronomic event not found',
      );
    }
    final notificationResult = await mongoClient.insertOne(
      'notification',
      notificationEntity.toJson(),
    );
    if (notificationResult.id != null) {
      await mongoClient.updateOneById(
          'astronomic_event', ObjectId.parse(notificationEntity.eventId), {
        r'$push': {
          'notification': notificationResult.id,
        },
      });
    }

    return ResponseEntity(
      statusCode: notificationResult.ok == 1
          ? HttpStatus.created
          : HttpStatus.badRequest,
      data: notificationResult.id as T,
      message: notificationResult.errmsg,
    );
  }
}
