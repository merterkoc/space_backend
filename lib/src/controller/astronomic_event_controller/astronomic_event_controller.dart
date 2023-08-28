import 'package:dart_frog/dart_frog.dart';
import 'package:space_backend/src/core/dio/model/response_entity.dart';
import 'package:space_backend/src/repository/astronomic_event_repository.dart';
import 'package:space_backend/src/service/model/dto/astronomic_event_dto/astronomic_event_dto.dart';
import 'package:space_backend/src/service/model/mapper/astronomic_event_mapper.dart';
import 'package:space_backend/src/util/extension/request_extension.dart';

class AstronomicEventController {
  Future<Response> postAstronomicEvent(RequestContext context) async {
    final body = await context.request.json();
    AstronomicEventDTO? data;
    try {
      data = AstronomicEventDTO.fromJson(body as Map<String, dynamic>);
    } catch (e) {
      return Response().badRequest('JSON parse error: $e');
    }

    final response = await AstronomicEventRepository()
        .postAstronomicEvent<dynamic>(AstronomicEventMapper().call(data));
    return Response.json(
      statusCode: response.data == null ? 400 : 200,
      body: ResponseEntity.toJson(response),
    );
  }
}