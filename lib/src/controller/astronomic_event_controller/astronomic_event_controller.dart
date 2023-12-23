import 'package:dart_frog/dart_frog.dart';
import 'package:space_backend/src/core/dio/model/response_entity.dart';
import 'package:space_backend/src/repository/astronomic_event_repository.dart';
import 'package:space_backend/src/service/astonomic_event_service/astronomic_event_service.dart';
import 'package:space_backend/src/service/model/dto/astronomic_event_dto/astronomic_event_dto.dart';
import 'package:space_backend/src/service/model/dto/coordinate_dto/coordinate_dto.dart';
import 'package:space_backend/src/service/model/mapper/astronomic_event_mapper.dart';
import 'package:space_backend/src/service/topic_service/topic_service.dart';
import 'package:space_backend/src/util/exception/custom_exception.dart';
import 'package:space_backend/src/util/exception/exception_handler.dart';
import 'package:space_backend/src/util/extension/request_extension.dart';
import 'package:space_backend/src/util/helper/location_helper.dart';

class AstronomicEventController {
  final AstronomicEventService _astronomicEventService =
      AstronomicEventService();
  final _topicService = TopicService();

  Future<Response> postAstronomicEvent(RequestContext context) async {
    final body = await context.request.json();
    AstronomicEventDTO? data;
    try {
      data = AstronomicEventDTO.fromJson(body as Map<String, dynamic>);
    } catch (e) {
      return Response().badRequest(message: 'JSON parse error: $e');
    }

    final result = await _topicService.getTopicList();

    final topicsByCoordinate = LocationHelper.getTopicsByCoordinate(
      data.coordinate!,
      result.map((e) => e.coordinate).toList(),
      3,
    );
    final containsTopic = result
        .where((element) => topicsByCoordinate.contains(element.coordinate));

    final astronomicEventDTO = data.copyWith(
      topics: containsTopic.map((e) => e.key).toList(),
    );

    final response =
        await AstronomicEventRepository().saveAstronomicEvent<dynamic>(
      AstronomicEventMapper().call(astronomicEventDTO),
    );
    return Response.json(
      statusCode: response.statusCode,
      body: ResponseEntity.toJson(response),
    );
  }

  Future<Response> getAllAstronomicEvent(RequestContext context) async {
    final headerCoordinate = context.request.headers['coordinate'];

    if (context.request.uri.path.contains('admin') ||
        context.request.uri.path.contains('admin') &&
            headerCoordinate == null) {
      final result = await _astronomicEventService.getAstronomicEventList(
        1,
        10,
      );
      return Response().ok(
        body: result,
      );
    }
    if (headerCoordinate == null) {
      return Response().badRequest(message: 'Please send coordinate header');
    }
    final coordinateDTO = CoordinateDTO(
      latitude: double.parse(headerCoordinate.split(',')[0]),
      longitude: double.parse(headerCoordinate.split(',')[1]),
    );

    final topicList = await _topicService.getTopicList();

    final nearestTopic = LocationHelper.getTopicKeyByCoordinate(
      coordinateDTO,
      topicList,
    );

    final result = await _astronomicEventService.getAstronomicEventListByTopic(
      1,
      10,
      nearestTopic,
    );
    return Response().ok(
      body: result,
    );
  }

  Future<Response> getAstronomicEventList(RequestContext context) async {
    final size = int.tryParse(context.request.uri.queryParameters['size']!);
    final page = int.tryParse(context.request.uri.queryParameters['page']!);
    final coordinate = context.request.headers['coordinate'];
    if (coordinate == null) {
      return Response().badRequest(message: 'Please send coordinate header');
    }
    final coordinateDTO = CoordinateDTO(
      latitude: double.parse(coordinate.split(',')[0]),
      longitude: double.parse(coordinate.split(',')[1]),
    );
    final topicList = await _topicService.getTopicList();

    final nearestTopic = LocationHelper.getTopicKeyByCoordinate(
      coordinateDTO,
      topicList,
    );
    final response = await _astronomicEventService
        .getAstronomicEventListByTopic(page!, size!, nearestTopic);
    return Response().ok(
      body: response,
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

  Future<Response> getAstronomicEventCategoryList(
    RequestContext context,
  ) async {
    final result =
        await _astronomicEventService.getAstronomicEventCategoryList();
    return Response().ok(
      body: result,
    );
  }
}
