import 'dart:async';

import 'package:dart_firebase_admin/auth.dart';
import 'package:space_backend/src/core/authentication/src/authenticators/authenticatior.dart';
import 'package:space_backend/src/core/authentication/src/model/role.dart';

class FirebaseAuthenticator implements Authenticator {
  FirebaseAuthenticator(this._auth);

  final Auth _auth;

  @override
  Future<void> createToken(String uid, Role role) async {
    await _auth.createCustomToken(uid, developerClaims: {'role': role.name});
  }

  @override
  Future<void> validateToken(String token, List<Role> roles) async {
    await _auth.verifyIdToken(token, checkRevoked: true);
  }
}
