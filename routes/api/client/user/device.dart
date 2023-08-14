import 'package:dart_frog/dart_frog.dart';
import 'package:space_backend/src/controller/user_controller/user_controller.dart';
import 'package:space_backend/src/util/extension/request_extension.dart';

Future<Response> onRequest(RequestContext context) async {
  switch (context.request.method) {
    case HttpMethod.post:
      return post(context);
    case HttpMethod.put:
      return Response().methodNotAllowed(context);
    case HttpMethod.delete:
      return Response().methodNotAllowed(context);
    case HttpMethod.get:
      return Response().methodNotAllowed(context);
    case HttpMethod.patch:
      return Response().methodNotAllowed(context);
    case HttpMethod.head:
      return Response().methodNotAllowed(context);
    case HttpMethod.options:
      return Response().methodNotAllowed(context);
  }
}

Future<Response> post(RequestContext context) {
  return UserController().postUserDevice(context);
}
