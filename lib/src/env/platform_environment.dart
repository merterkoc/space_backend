import 'dart:io';

mixin PlatformEnvironment {
  static const String _port = 'PORT';
  static const String _serverKey = 'FIREBASE_SERVER_KEY';
  static const String _mongoUri = 'MONGO_URI';
  static const String _jwtSecretKey = 'JWT_SECRET_KEY';
  static const String _firebaseProjectId = 'FIREBASE_PROJECT_NAME';

  static String? get port => Platform.environment[_port];

  static int get portInt => int.tryParse(port ?? '8080') ?? 8080;

  static String get serverKey {
    final serverKey = Platform.environment[_serverKey];
    if (serverKey == null) {
      throw Exception('Please set $_serverKey in .env file');
    }
    return Platform.environment[_serverKey]!;
  }

  static String get mongoUri {
    final mongoUri = Platform.environment[_mongoUri];
    if (mongoUri == null) {
      return 'mongodb://localhost:27017/space';
    }
    return Platform.environment[_mongoUri]!;
  }

  static String get jwtSecretKey {
    final jwtSecretKey = Platform.environment[_jwtSecretKey];
    if (jwtSecretKey == null) {
      throw Exception('Please set $_jwtSecretKey in .env file');
    }
    return Platform.environment[_jwtSecretKey]!;
  }

  static String get firebaseProjectId {
    final firebaseProjectId = Platform.environment[_firebaseProjectId];
    if (firebaseProjectId == null) {
      throw Exception('Please set $_firebaseProjectId in .env file');
    }
    return Platform.environment[_firebaseProjectId]!;
  }
}
