import 'package:dart_frog/dart_frog.dart';
import 'package:space_backend/src/controller/notification_controller/notification_controller.dart';

Future<Response> onRequest(RequestContext context) =>
    NotificationController().postNotification(context);
