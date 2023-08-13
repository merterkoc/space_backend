import 'package:space_backend/src/env/platform_environment.dart';

mixin FirebaseConstants {
  static String get baseUrl => 'https://fcm.googleapis.com/';

  static String get send => 'fcm/send';

  static Map<String, dynamic> get header => {
        'Content-Type': 'application/json',
        'Authorization': 'key=${PlatformEnvironment.serverKey}',
      };
}
