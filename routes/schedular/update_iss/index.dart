import 'package:dart_frog/dart_frog.dart';
import 'package:space_backend/src/controller/iss_controller/iss_controller.dart';
import 'package:space_backend/src/util/extension/response_extension.dart';

/// @Allow(POST)
Future<Response> onRequest(RequestContext context) async {
  switch (context.request.method) {
    case HttpMethod.post:
      return ISSController().updateIss(context);
    case HttpMethod.get:
    case HttpMethod.put:
    case HttpMethod.delete:
    case HttpMethod.patch:
    case HttpMethod.head:
    case HttpMethod.options:
      return Response().methodNotAllowed(context);
  }
}
