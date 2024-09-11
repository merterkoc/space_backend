import 'dart:async';

import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:space_backend/src/core/authentication/authentication.dart';
import 'package:space_backend/src/core/authentication/src/authenticators/firebase_authenticator.dart';
import 'package:space_backend/src/core/authentication/src/authenticators/mongo_authenticator.dart';
import 'package:space_backend/src/core/authentication/src/exception/invalid_issuer_exception.dart';

class AuthenticatorManager {
  AuthenticatorManager({
    required this.firebaseAuthenticator,
    required this.mongoAuthenticator,
  });

  final FirebaseAuthenticator firebaseAuthenticator;
  final MongoAuthenticator mongoAuthenticator;

  FutureOr<void> validateToken(String token, List<Role> roles) {
    final issuer = JwtDecoder.decode(token)['issuer'].toString();
    if (issuer == Issuer.spaceApp.name) {
      return firebaseAuthenticator.validateToken(token, roles);
    } else if (issuer == Issuer.firebase.name) {
      return mongoAuthenticator.validateToken(token, roles);
    }
    throw InvalidIssuerException(issuer);
  }
}
