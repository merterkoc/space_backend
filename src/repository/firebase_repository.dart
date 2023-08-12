
import '../core/dio/firebase_client/firebase_client.dart';
import '../core/dio/model/response_entity.dart';
import '../service/model/request_model/notification_info.dart';

class FirebaseRepository {
  final _firebaseClient = FirebaseClient();

  /// Send notification to all devices
  Future<ResponseEntity<T>> sendNotification<T>(
    NotificationInfo notificationInfo,
  ) async {
    return _firebaseClient.post<T>(
      'fcm/send',
      data: notificationInfo.toJson(),
    );
  }
}
