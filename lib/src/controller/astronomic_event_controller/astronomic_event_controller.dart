import 'package:dart_frog/dart_frog.dart';
import 'package:space_backend/src/core/dio/model/response_entity.dart';
import 'package:space_backend/src/repository/astronomic_event_repository.dart';
import 'package:space_backend/src/service/astonomic_event_service/astronomic_event_service.dart';
import 'package:space_backend/src/service/model/dto/astronomic_event_dto/astronomic_event_dto.dart';
import 'package:space_backend/src/service/model/mapper/astronomic_event_mapper.dart';
import 'package:space_backend/src/util/exception/custom_exception.dart';
import 'package:space_backend/src/util/exception/exception_handler.dart';
import 'package:space_backend/src/util/extension/request_extension.dart';

class AstronomicEventController {
  final AstronomicEventService _astronomicEventService =
      AstronomicEventService();

  Future<Response> postAstronomicEvent(RequestContext context) async {
    final body = await context.request.json();
    AstronomicEventDTO? data;
    try {
      data = AstronomicEventDTO.fromJson(body as Map<String, dynamic>);
    } catch (e) {
      return Response().badRequest(message: 'JSON parse error: $e');
    }

    final response = await AstronomicEventRepository()
        .saveAstronomicEvent<dynamic>(AstronomicEventMapper().call(data));
    return Response.json(
      statusCode: response.statusCode,
      body: ResponseEntity.toJson(response),
    );
  }

  Future<Response> getAllAstronomicEvent(RequestContext context) async {
    final response =
        await AstronomicEventRepository().getAstronomicEvent<dynamic>();
    return Response.json(
      statusCode: response.statusCode,
      body: ResponseEntity.toJson(response),
    );
  }

  Future<Response> getAstronomicEventList(RequestContext context) async {
    final size = int.tryParse(context.request.uri.queryParameters['size']!);
    final page = int.tryParse(context.request.uri.queryParameters['page']!);

    final response = await AstronomicEventRepository()
        .getAstronomicEventList<dynamic>(page!, size!);
    return Response.json(
      statusCode: response.statusCode,
      body: ResponseEntity.toJson(response),
    );
  }

  Future<Response> getAstronomicEventById(
    RequestContext context,
    String id,
  ) async {
    try {
      final response = await _astronomicEventService.getAstronomicEventById(id);
      return Response.json(
        statusCode: response.statusCode,
        body: ResponseEntity.toJson(response),
      );
    } on CustomException catch (e) {
      return ExceptionHandler.handleException(e);
    }
  }

  Future<Response> putAstronomicEvent(RequestContext context, String id) async {
    final body = await context.request.json();
    AstronomicEventDTO? data;
    try {
      data = AstronomicEventDTO.fromJson(body as Map<String, dynamic>);
    } catch (e) {
      return Response().badRequest(message: 'JSON parse error: $e');
    }
    final response =
        await AstronomicEventRepository().putAstronomicEvent<dynamic>(
      AstronomicEventMapper().call(data),
      id,
    );
    return Response.json(
      statusCode: response.statusCode,
      body: ResponseEntity.toJson(response),
    );
  }
}
