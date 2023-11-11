import 'package:space_backend/src/core/dio/model/response_entity.dart';
import 'package:space_backend/src/repository/topic_repository.dart';
import 'package:space_backend/src/service/model/dto/topic_dto/topic_dto.dart';
import 'package:space_backend/src/service/model/entity/topic_entity/topic_entity.dart';
import 'package:space_backend/src/service/model/mapper/topic_mapper.dart';

class TopicService {
  TopicService() {
    _topicRepository = TopicRepository();
  }

  late final TopicRepository _topicRepository;

  Future<ResponseEntity<String>> saveTopic<T>(TopicEntity topicEntity) async {
    final result = await _topicRepository.saveTopic(topicEntity);
    return result;
  }

  Future<List<TopicDTO>> getTopicList() async {
    final result = await _topicRepository.getTopicList();
    return result.data!.map((e) => TopicMapper().from(e)).toList();
  }
}
