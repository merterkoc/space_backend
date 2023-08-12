import 'dart:io';

mixin PlatformEnvironment {
  static const String _port = 'PORT';
  static const String _serverKey = 'FIREBASE_SERVER_KEY';

  static String? get port => Platform.environment[_port];

  static String get serverKey {
    final serverKey = Platform.environment[_serverKey];
    if (serverKey == null) {
      throw Exception('Please set $_serverKey in .env file');
    }
    return Platform.environment[_serverKey]!;
  }
}
