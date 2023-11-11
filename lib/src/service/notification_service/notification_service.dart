import 'dart:async';
import 'dart:io';

import 'package:space_backend/src/core/dio/model/response_entity.dart';
import 'package:space_backend/src/core/logger/logger.dart';
import 'package:space_backend/src/repository/firebase_repository.dart';
import 'package:space_backend/src/repository/notification_repository.dart';
import 'package:space_backend/src/service/model/dto/astronomic_event_dto/astronomic_event_dto.dart';
import 'package:space_backend/src/service/model/dto/firebase_notification_dto/firebase_notification_dto.dart';
import 'package:space_backend/src/service/model/dto/notification_dto/notification_dto.dart';
import 'package:space_backend/src/service/model/dto/notification_info_dto/notification_info_dto.dart';
import 'package:space_backend/src/service/model/mapper/notification_mapper.dart';

class NotificationService {
  NotificationService() {
    _notificationRepository = NotificationRepository();
    _firebaseRepository = FirebaseRepository();
  }

  late final NotificationRepository _notificationRepository;
  late final FirebaseRepository _firebaseRepository;

  Future<ResponseEntity<dynamic>> saveAndSendNotification(
    NotificationDTO notificationDTO,
    AstronomicEventDTO astronomicEventDTO,
  ) async {
    final result = await _notificationRepository
        .saveNotification<dynamic>(NotificationMapper().call(notificationDTO))
        .onError(
          (error, stackTrace) => ResponseEntity(
            statusCode: HttpStatus.badRequest,
            message: error.toString(),
          ),
        );
    if ((result.statusCode == HttpStatus.ok ||
            result.statusCode == HttpStatus.created) &&
        notificationDTO.sent) {
      sendNotification(notificationDTO, astronomicEventDTO);
    }
    return result;
  }

  FutureOr<ResponseEntity<dynamic>> sendNotification(
    NotificationDTO notificationDTO,
    AstronomicEventDTO astronomicEventDTO,
  ) {
    final notificationInfoDTO = NotificationInfoDTO(
      notification: FirebaseNotificationDTO(
        title: notificationDTO.title,
        body: notificationDTO.body,
      ),
      priority: 'high',

      /// Send notification multiple topics
      /// Documentation: https://firebase.google.com/docs/cloud-messaging/ios/topic-messaging
      condition:
          astronomicEventDTO.topics?.map((e) => "'$e' in topics").join(' && '),
    );

    return _firebaseRepository
        .sendNotification<Map<String, dynamic>>(notificationInfoDTO)
        .whenComplete(() => logger.i('Notification sent'))
        .onError(
          (error, stackTrace) => ResponseEntity(
            statusCode: HttpStatus.badRequest,
            message: error.toString(),
          ),
        );
  }
}
