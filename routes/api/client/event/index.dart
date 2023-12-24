import 'package:dart_frog/dart_frog.dart';
import 'package:space_backend/src/controller/astronomic_event_controller/astronomic_event_controller.dart';
import 'package:space_backend/src/service/model/enum/event_category.dart';
import 'package:space_backend/src/util/extension/request_extension.dart';

Future<Response> onRequest(RequestContext context) async {
  final astronomicEventController = AstronomicEventController();
  final id = context.request.uri.queryParameters['id'];
  final category = context.request.uri.queryParameters['category'];
  if (id != null && category != null) {
    return Response()
        .badRequest(message: 'id and category can not be used together');
  }
  switch (context.request.method) {
    case HttpMethod.get:
      if (id != null) {
        return astronomicEventController.getAstronomicEventById(context, id);
      } else if (category != null && category != EventCategory.ALL.name) {
        return astronomicEventController.getAstronomicEventByCategory(
          context,
          category,
        );
      } else {
        return astronomicEventController.getAstronomicEventList(context);
      }
    case HttpMethod.post:
    case HttpMethod.put:
    case HttpMethod.patch:
    case HttpMethod.delete:
    case HttpMethod.head:
    case HttpMethod.options:
      return Response().methodNotAllowed(context);
  }
}
