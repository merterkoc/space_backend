import 'dart:async';

import 'package:space_backend/src/core/authentication/src/model/role.dart';

interface class Authenticator {
  FutureOr<void> validateToken(String token, List<Role> roles) {}

  FutureOr<void> createToken(String userId, Role role) {}
}
