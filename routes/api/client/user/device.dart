import 'package:dart_frog/dart_frog.dart';
import 'package:space_backend/src/controller/user_controller/user_controller.dart';
import 'package:space_backend/src/util/extension/response_extension.dart';

/// @Allow(POST)
Future<Response> onRequest(RequestContext context) async {
  switch (context.request.method) {
    case HttpMethod.post:
      return post(context);
    case HttpMethod.put:
    case HttpMethod.delete:
    case HttpMethod.get:
    case HttpMethod.patch:
    case HttpMethod.head:
    case HttpMethod.options:
      return Response().methodNotAllowed(context);
  }
}

Future<Response> post(RequestContext context) {
  return UserController().postUserDevice(context);
}
