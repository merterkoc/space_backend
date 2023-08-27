import 'package:dart_frog/dart_frog.dart';
import 'package:space_backend/src/controller/astronomic_event_controller/astronomic_event_controller.dart';

Future<Response> onRequest(RequestContext context) =>
    AstronomicEventController().postAstronomicEvent(context);
