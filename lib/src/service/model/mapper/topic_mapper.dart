import 'package:space_backend/src/service/model/dto/topic_dto/topic_dto.dart';
import 'package:space_backend/src/service/model/entity/topic_entity/topic_entity.dart';
import 'package:space_backend/src/util/mapper/mapper.dart';

class TopicMapper with Mapper<TopicDTO, TopicEntity> {
  @override
  TopicEntity call(TopicDTO object) {
    return TopicEntity(
      key: object.key,
      coordinate: object.coordinate,
    );
  }

  @override
  TopicDTO from(TopicEntity object) {
    return TopicDTO(
      key: object.key,
      coordinate: object.coordinate,
    );
  }
}
