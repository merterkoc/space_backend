import 'package:dart_firebase_admin/auth.dart';
import 'package:dart_firebase_admin/dart_firebase_admin.dart';
import 'package:dart_firebase_admin/messaging.dart';
import 'package:space_backend/src/env/platform_environment.dart';
export 'package:dart_firebase_admin/messaging.dart';

 class FirebaseManager {
  factory FirebaseManager() {
    return _instance;
  }

  FirebaseManager._();

  static final FirebaseManager _instance = FirebaseManager._();

  late final FirebaseAdminApp _firebaseApp;

  void initialize() {
    _firebaseApp = FirebaseAdminApp.initializeApp(
      PlatformEnvironment.firebaseProjectId,
      Credential.fromApplicationDefaultCredentials(),
    );
  }

  FirebaseAdminApp get firebaseApp => _firebaseApp;

  Auth get auth => Auth(_instance._firebaseApp);

  Messaging get messaging => Messaging(_instance._firebaseApp);


}
