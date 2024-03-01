import 'package:dart_frog/dart_frog.dart';
import 'package:space_backend/src/middleware/authorization.dart';

Handler middleware(Handler handler) {
  return handler.use(authorize([Role.user]));
}
