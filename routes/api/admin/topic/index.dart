import 'package:dart_frog/dart_frog.dart';
import 'package:space_backend/src/controller/topic_controller/topic_controller.dart';
import 'package:space_backend/src/middleware/authorization.dart';
import 'package:space_backend/src/util/extension/request_extension.dart';

/// @Allow(POST, GET)
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
    case HttpMethod.post:
      return TopicController().postTopic(context);
    case HttpMethod.get:
      return TopicController().getTopicList(context);
    case HttpMethod.put:
    case HttpMethod.delete:
    case HttpMethod.patch:
    case HttpMethod.head:
    case HttpMethod.options:
      return Response().methodNotAllowed(context);
  }
}
