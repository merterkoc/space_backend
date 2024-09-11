import 'package:dart_frog/dart_frog.dart';
import 'package:jaguar_jwt/jaguar_jwt.dart';
import 'package:space_backend/src/core/authentication/authentication.dart';
import 'package:space_backend/src/core/authentication/src/authenticators/authenticatior.dart';
import 'package:space_backend/src/core/logger/logger.dart';
import 'package:space_backend/src/env/platform_environment.dart';
import 'package:space_backend/src/util/exception/authorization_exception.dart';
import 'package:space_backend/src/util/extension/request_extension.dart';

enum Role { admin, user }

Middleware authorize(List<Role> roles) {
  return provider<AuthorizationStatus>(
    (context) {
      final token =
          context.request.headers['Authorization']?.replaceFirst('Bearer ', '');

      //TODO: check if token is valid
      return AuthenticatorManager().validateToken(token, roles);
    },
  );
}
