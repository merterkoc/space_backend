import 'package:space_backend/src/const/http/firebase_const.dart';
import 'package:space_backend/src/core/dio/http_handler/firebase_http_header_interceptor.dart';
import 'package:space_backend/src/core/dio/interface/i_dio_client.dart';

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
