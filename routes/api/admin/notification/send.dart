import 'package:dart_frog/dart_frog.dart';

import '../../../../src/controller/firebase_controller/firebase_controller.dart';

Future<Response> onRequest(RequestContext context) async =>
    FirebaseController().sendNotification(context);
