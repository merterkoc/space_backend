import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:space_backend/src/core/dio/model/iss_entity.dart';
import 'package:space_backend/src/core/dio/model/response_entity.dart';
import 'package:space_backend/src/core/firebase/firebase_manager.dart';
import 'package:space_backend/src/core/logger/logger.dart';
import 'package:space_backend/src/repository/firebase_repository.dart';
import 'package:space_backend/src/repository/notification_repository.dart';
import 'package:space_backend/src/service/iss_service/iss_service.dart';
import 'package:space_backend/src/service/model/dto/firebase_notification_dto/firebase_notification_dto.dart';
import 'package:space_backend/src/service/model/dto/notification_dto/notification_dto.dart';
import 'package:space_backend/src/service/model/dto/notification_info_dto/notification_info_dto.dart';
import 'package:space_backend/src/service/model/mapper/notification_mapper.dart';
import 'package:space_backend/src/util/observable.dart';

typedef IssObserver = Observer;

class NotificationService extends IssObserver {
  NotificationService() : super() {
    _notificationRepository = NotificationRepository();
    _firebaseRepository = FirebaseRepository();
    _issService = ISSService();
    _subscribeObservable();
  }

  late final NotificationRepository _notificationRepository;
  late final FirebaseRepository _firebaseRepository;
  late final ISSService _issService;
  late final FirebaseManager _firebaseManager;

  void _subscribeObservable() {
    _issService.subscribe(this);
  }

  @override
  Future<void> update(dynamic data) async {
    if (data is ISSResponseEntity) {
      logger.i('ISSResponseEntity received${data.issPositionEntity}');
    }
  }

  Future<ResponseEntity<dynamic>> saveAndSendNotification(
    NotificationDTO notificationDTO,
    List<String> topics,
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
      unawaited(sendNotification(notificationDTO, topics));
    }
    return result;
  }

  Future<Future<Response<Map<String, dynamic>>>> sendNotification(
    NotificationDTO notificationDTO,
    List<String> topics,
  ) async {
    final notificationInfoDTO = NotificationInfoDTO(
      notification: FirebaseNotificationDTO(
        title: notificationDTO.title,
        body: notificationDTO.body,
      ),
      priority: 'high',

      /// Send notification multiple topics
      /// Documentation: https://firebase.google.com/docs/cloud-messaging/ios/topic-messaging
      condition: topics.map((e) => "'$e' in topics").join(' && '),
    );

    return _firebaseRepository
        .sendNotification<Map<String, dynamic>>(notificationInfoDTO)
        .whenComplete(() => logger.i('Notification sent'))
        .onError(
          (error, stackTrace) => Response<Map<String, dynamic>>(
            statusCode: HttpStatus.badRequest,
            data: {'message': error.toString()},
            requestOptions: RequestOptions(path: '/notification/send'),
          ),
        );
  }

  Future<void> sendNotifications(
    NotificationDTO notifications,
    String topic,
  ) async {
    await _firebaseManager.messaging.send(
      TopicMessage(
        topic: topic,
        notification: Notification(
          title: notifications.title,
          body: notifications.body,
        ),
      ),
    );
  }

  void initialize() {}
}
