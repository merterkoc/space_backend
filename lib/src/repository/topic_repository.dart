import 'package:space_backend/src/core/dio/model/response_entity.dart';
import 'package:space_backend/src/repository/base_repository/base_repository.dart';
import 'package:space_backend/src/service/model/entity/topic_entity/topic_entity.dart';

class TopicRepository with BaseRepository {
  Future<ResponseEntity<T>> saveTopic<T>(TopicEntity topicEntity) async {
    final result = await mongoClient.insertOne(
      'topic',
      topicEntity.toJson(),
    );
    return ResponseEntity(
      statusCode: result.ok == 1 ? 200 : 400,
      data: result.id as T,
      message: result.errmsg,
    );
  }

  Future<ResponseEntity<T>> getTopicList<T>() async {
    final result = await mongoClient.find('topic');
    final newResult = result.map((e) {
      e
        ..remove('createdAt')
        ..remove('updatedAt');
      return e;
    }).toList();
    return ResponseEntity(
      statusCode: 200,
      data: newResult as T,
    );
  }
}
