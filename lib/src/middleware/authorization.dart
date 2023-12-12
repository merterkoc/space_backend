import 'package:dart_frog/dart_frog.dart';
import 'package:jaguar_jwt/jaguar_jwt.dart';
import 'package:space_backend/src/env/platform_environment.dart';

Middleware authorize() {
  return provider<bool>((context) {
    final request = context.request;

    // 2.
    final headers = request.headers;
    final authData = headers['Authorization'];
    try {
      final token = authData!.trim();

      // 3.
      verifyJwtHS256Signature(
        token,
        PlatformEnvironment.jwtSecretKey,
      );
      return true;
    } catch (e) {
      return false;
    }
  });
}
