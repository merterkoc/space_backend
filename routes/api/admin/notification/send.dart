import 'package:dart_frog/dart_frog.dart';
import 'package:space_backend/src/controller/firebase_controller/firebase_controller.dart';

Future<Response> onRequest(RequestContext context) async =>
    FirebaseController().sendNotification(context);
