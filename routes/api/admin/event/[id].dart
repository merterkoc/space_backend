// ignore_for_file: file_names

import 'package:dart_frog/dart_frog.dart';
import 'package:space_backend/src/controller/astronomic_event_controller/astronomic_event_controller.dart';
import 'package:space_backend/src/middleware/authorization.dart';
import 'package:space_backend/src/util/extension/request_extension.dart';

/// @Allow(GET, POST, PUT)
/// @Security(bearer_auth)
Future<Response> onRequest(RequestContext context, String id) async {
  final isAuthenticated = context.read<AuthorizationStatus>();
  if (isAuthenticated != AuthorizationStatus.authorized) {
    if (isAuthenticated == AuthorizationStatus.expired) {
      return Response().unauthorized(message: 'Token expired');
    } else if (isAuthenticated == AuthorizationStatus.unauthorized) {
      return Response().unauthorized(
        message: 'You are not authorized to perform this action',
      );
    } else if (isAuthenticated == AuthorizationStatus.forbidden) {
      return Response().forbidden();
    }
  }
  final astronomicEventController = AstronomicEventController();
  switch (context.request.method) {
    case HttpMethod.get:
      return astronomicEventController.getAstronomicEventById(context, id);
    case HttpMethod.post:
    case HttpMethod.put:
      return astronomicEventController.putAstronomicEvent(context, id);
    case HttpMethod.patch:
    case HttpMethod.delete:
    case HttpMethod.head:
    case HttpMethod.options:
      return Response().methodNotAllowed(context);
  }
}
