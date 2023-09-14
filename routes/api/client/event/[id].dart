// ignore_for_file: file_names

import 'package:dart_frog/dart_frog.dart';
import 'package:space_backend/src/controller/astronomic_event_controller/astronomic_event_controller.dart';
import 'package:space_backend/src/util/extension/request_extension.dart';

Future<Response> onRequest(RequestContext context, String id) async {
  final astronomicEventController = AstronomicEventController();
  switch (context.request.method) {
    case HttpMethod.get:
      return astronomicEventController.getAstronomicEventById(context, id);
    case HttpMethod.post:
    case HttpMethod.put:
    case HttpMethod.patch:
    case HttpMethod.delete:
    case HttpMethod.head:
    case HttpMethod.options:
      return Response().methodNotAllowed(context);
  }
}
