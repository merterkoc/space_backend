import 'package:dart_frog/dart_frog.dart';
import 'package:jaguar_jwt/jaguar_jwt.dart';
import 'package:space_backend/src/core/logger/logger.dart';
import 'package:space_backend/src/env/platform_environment.dart';
import 'package:space_backend/src/util/exception/authorization_exception.dart';

enum Role { admin, user }

enum AuthorizationStatus { authorized, expired, unauthorized, forbidden }

Middleware authorize(List<Role> roles) {
  return provider<AuthorizationStatus>(
    (context) {
      final token =
          context.request.headers['Authorization']?.replaceFirst('Bearer ', '');
      if (token == null) {
        return AuthorizationStatus.unauthorized;
      }
      try {
        final claimSet =
            verifyJwtHS256Signature(token, PlatformEnvironment.jwtSecretKey);
        if (claimSet.expiry == null) {
          return throw NullExpirationDateException();
        }
        if (claimSet.expiry!.isBefore(DateTime.now())) {
          throw InvalidExpirationDateException(claimSet.expiry.toString());
        }

        if (roles.contains(Role.admin)) {
          return claimSet.containsKey('role') && claimSet['role'] == 'admin'
              ? AuthorizationStatus.authorized
              : AuthorizationStatus.unauthorized;
        }
        if (roles.contains(Role.user)) {
          return claimSet.containsKey('role') && claimSet['role'] == 'user'
              ? AuthorizationStatus.authorized
              : AuthorizationStatus.unauthorized;
        }
        return AuthorizationStatus.forbidden;
      } on AuthorizationException catch (e) {
        logger.w(e);
        return _handleException(e);
      }
    },
  );
}

AuthorizationStatus _handleException(AuthorizationException e) {
  if (e is InvalidExpirationDateException) {
    return AuthorizationStatus.expired;
  } else if (e is NullExpirationDateException) {
    return AuthorizationStatus.expired;
  }else if (e is ForbiddenException) {
    return AuthorizationStatus.forbidden;
  }
  else {
    return AuthorizationStatus.unauthorized;
  }
}
