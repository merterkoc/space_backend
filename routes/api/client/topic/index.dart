import 'package:dart_frog/dart_frog.dart';
import 'package:space_backend/src/controller/topic_controller/topic_controller.dart';
import 'package:space_backend/src/util/extension/request_extension.dart';

/// @Allow(GET)
Future<Response> onRequest(RequestContext context) async {
  switch (context.request.method) {
    case HttpMethod.get:
      return TopicController().getTopicList(context);
    case HttpMethod.post:
    case HttpMethod.put:
    case HttpMethod.delete:
    case HttpMethod.patch:
    case HttpMethod.head:
    case HttpMethod.options:
      return Response().methodNotAllowed(context);
  }
}
