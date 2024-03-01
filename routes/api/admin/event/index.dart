import 'package:dart_frog/dart_frog.dart';
import 'package:space_backend/src/controller/astronomic_event_controller/astronomic_event_controller.dart';
import 'package:space_backend/src/middleware/authorization.dart';
import 'package:space_backend/src/util/extension/response_extension.dart';

/// @Allow(GET, POST)
/// @Security(bearer_auth)
Future<Response> onRequest(RequestContext context) async {
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
  switch (context.request.method) {
    case HttpMethod.get:
      return AstronomicEventController().getAllAstronomicEvent(context);
    case HttpMethod.post:
      return AstronomicEventController().postAstronomicEvent(context);
    case HttpMethod.put:
    case HttpMethod.delete:
    case HttpMethod.patch:
    case HttpMethod.head:
    case HttpMethod.options:
      return Response().methodNotAllowed(context);
  }
}
