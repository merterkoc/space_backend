import 'package:dio/dio.dart';
import '../../../const/http/firebase_const.dart';

/// [FirebaseHttpHeaderInterceptor] is used to send default http headers during
/// network request.
class FirebaseHttpHeaderInterceptor extends Interceptor {
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) {
    options.headers.addAll(FirebaseConstants.header);
    handler.next(options);
  }
}
