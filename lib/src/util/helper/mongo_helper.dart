import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:jaguar_jwt/jaguar_jwt.dart';
import 'package:mongo_pool/mongo_pool.dart';
import 'package:space_backend/src/env/platform_environment.dart';

mixin MongoHelper {
  static String? getObjectId(ObjectId? id) {
    return id?.toHexString();
  }

  static List<String?>? getObjectIdList(List<dynamic>? id) {
    if (id == null) return null;
    return id.map((e) => getObjectId(e as ObjectId)).toList();
  }

  static String hashPassword(String password) {
    final bytes = utf8.encode(password);
    final hash = sha256.convert(bytes);
    return hash.toString();
  }

  static bool comparePassword(String password, String password2) {
    return hashPassword(password) == password2;
  }

  static String issueToken(String userId, String role) {
    final claimSet = JwtClaim(
      subject: userId,
      issuer: 'space_app',
      otherClaims: <String, dynamic>{
        'type': 'authenticationresponse',
        'role': role,
      },
      maxAge: const Duration(hours: 24),
    );
    final token = issueJwtHS256(claimSet, PlatformEnvironment.jwtSecretKey);
    return token;
  }
}
