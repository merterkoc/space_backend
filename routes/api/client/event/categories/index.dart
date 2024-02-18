import 'package:dart_frog/dart_frog.dart';
import 'package:space_backend/src/controller/astronomic_event_controller/astronomic_event_controller.dart';
import 'package:space_backend/src/util/extension/request_extension.dart';

/// @Allow(GET)
Future<Response> onRequest(RequestContext context) async {
  final astronomicEventController = AstronomicEventController();
  switch (context.request.method) {
    case HttpMethod.get:
      return astronomicEventController.getAstronomicEventCategoryList(context);
    case HttpMethod.post:
    case HttpMethod.put:
    case HttpMethod.patch:
    case HttpMethod.delete:
    case HttpMethod.head:
    case HttpMethod.options:
      return Response().methodNotAllowed(context);
  }
}
