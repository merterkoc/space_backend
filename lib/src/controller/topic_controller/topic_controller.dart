import 'package:dart_frog/dart_frog.dart';
import 'package:space_backend/src/core/dio/model/response_entity.dart';
import 'package:space_backend/src/service/model/dto/topic_dto/topic_dto.dart';
import 'package:space_backend/src/service/model/mapper/topic_mapper.dart';
import 'package:space_backend/src/service/topic_service/topic_service.dart';
import 'package:space_backend/src/util/extension/response_extension.dart';

class TopicController {
  final TopicService _topicService = TopicService();

  Future<Response> postTopic(RequestContext context) async {
    final body = await context.request.json();
    TopicDTO? data;
    try {
      data = TopicDTO.fromJson(body as Map<String, dynamic>);
    } catch (e) {
      return Response().badRequest(message: 'JSON parse error: $e');
    }

    final response = await _topicService.saveTopic<dynamic>(
      TopicMapper().call(data),
    );
    return Response.json(
      statusCode: response.data == null ? 400 : 200,
      body: ResponseEntity.toJson(response),
    );
  }

  Future<Response> getTopicList(RequestContext context) async {
    final response = await _topicService.getTopicList();
    return Response().ok(
      body: response,
    );
  }
}
