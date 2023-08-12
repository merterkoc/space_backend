import '../../../const/http/firebase_const.dart';
import '../http_handler/firebase_http_header_interceptor.dart';
import '../interface/i_dio_client.dart';

class FirebaseClient extends IDioClient {
  factory FirebaseClient() {
    return _instance;
  }

  FirebaseClient._()
      : super(
          url: FirebaseConstants.baseUrl,
          interceptor: FirebaseHttpHeaderInterceptor(),
        );

  // Singleton instance
  static final FirebaseClient _instance = FirebaseClient._();
}
