import 'package:dart_frog/dart_frog.dart';
import 'package:space_backend/src/core/dio/model/response_entity.dart';
import 'package:space_backend/src/repository/topic_repository.dart';
import 'package:space_backend/src/service/model/dto/topic_dto/topic_dto.dart';
import 'package:space_backend/src/service/model/mapper/topic_mapper.dart';
import 'package:space_backend/src/util/extension/request_extension.dart';

class TopicController {
  Future<Response> postTopic(RequestContext context) async {
    final body = await context.request.json();
    TopicDTO? data;
    try {
      data = TopicDTO.fromJson(body as Map<String, dynamic>);
    } catch (e) {
      return Response().badRequest('JSON parse error: $e');
    }

    final response =
        await TopicRepository().saveTopic<dynamic>(TopicMapper().call(data));
    return Response.json(
      statusCode: response.data == null ? 400 : 200,
      body: ResponseEntity.toJson(response),
    );
  }

  Future<Response> getTopicList(RequestContext context) async {
    final response = await TopicRepository().getTopicList<dynamic>();
    return Response.json(
      statusCode: response.data == null ? 400 : 200,
      body: ResponseEntity.toJson(response),
    );
  }
}
