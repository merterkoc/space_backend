import 'package:space_backend/src/const/http/firebase_const.dart';
import 'package:space_backend/src/core/dio/firebase_client/firebase_client.dart';
import 'package:space_backend/src/core/dio/model/response_entity.dart';
import 'package:space_backend/src/service/model/dto/notification_info_dto/notification_info_dto.dart';

class FirebaseRepository {
  final _firebaseClient = FirebaseClient();

  /// Send notification to all devices
  Future<ResponseEntity<T>> sendNotification<T>(
    NotificationInfoDTO notificationInfo,
  ) async {
    return _firebaseClient.post<T>(
      FirebaseConstants.send,
      data: notificationInfo.toJson(),
    );
  }
}
