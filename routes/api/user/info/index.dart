import 'package:dart_frog/dart_frog.dart';
import 'package:jaguar_jwt/jaguar_jwt.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:space_backend/src/controller/user_controller/user_controller.dart';
import 'package:space_backend/src/middleware/authorization.dart';
import 'package:space_backend/src/util/extension/request_extension.dart';
import 'package:space_backend/src/util/extension/response_extension.dart';

/// @Allow(GET)
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

  //Jwt parse




  switch (context.request.method) {
    case HttpMethod.get:
      return UserController().getUserInfo(context);
    case HttpMethod.post:
    case HttpMethod.put:
    case HttpMethod.delete:
    case HttpMethod.patch:
    case HttpMethod.head:
    case HttpMethod.options:
      return Response().methodNotAllowed(context);
  }
}
