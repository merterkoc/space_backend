import 'package:space_backend/src/service/model/dto/astronomic_event_dto/astronomic_event_dto.dart';
import 'package:space_backend/src/service/model/entity/astronomic_event_entity/astronomic_event_entity.dart';
import 'package:space_backend/src/util/mapper/mapper.dart';

class AstronomicEventMapper
    with Mapper<AstronomicEventDTO, AstronomicEventEntity> {
  @override
  AstronomicEventEntity call(AstronomicEventDTO object) {
    return AstronomicEventEntity(
      id: object.id,
      name: object.name,
      description: object.description,
      startDate: object.startDate,
      endDate: object.endDate,
      coordinate: object.coordinate,
      type: object.type,
      image: object.image,
      notification: const [],
      topics: object.topics ?? const [],
    );
  }

  @override
  AstronomicEventDTO from(AstronomicEventEntity object) {
    return AstronomicEventDTO(
      id: object.id,
      name: object.name,
      description: object.description,
      startDate: object.startDate,
      endDate: object.endDate,
      coordinate: object.coordinate,
      type: object.type,
      image: object.image,
    );
  }

  Iterable fromList(List<Map<String, dynamic>> list) {
    return list.map((e) => from(AstronomicEventEntity.fromJson(e)));

  }
}
