import 'dart:io';

mixin PlatformEnvironment {
  static const String _port = 'PORT';
  static const String _serverKey = 'FIREBASE_SERVER_KEY';
  static const String _mongoUri = 'MONGO_URI';

  static String? get port => Platform.environment[_port];

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
}
