import 'package:space_backend/src/service/model/dto/astronomic_event_detail_dto/astronomic_event_detail_dto.dart';
import 'package:space_backend/src/service/model/dto/notification_dto/notification_dto.dart';
import 'package:space_backend/src/service/model/entity/astronomic_event_entity/astronomic_event_entity.dart';
import 'package:space_backend/src/util/mapper/mapper.dart';

class AstronomicEventDetailMapper
    with Mapper<AstronomicEventDetailDTO, AstronomicEventEntity> {
  @override
  AstronomicEventEntity call(AstronomicEventDetailDTO object) {
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
      topics: const [],
      categories: const [],
    );
  }

  @override
  AstronomicEventDetailDTO from(
    AstronomicEventEntity object, {
    List<NotificationDTO>? notificationDTO,
  }) {
    return AstronomicEventDetailDTO(
      id: object.id,
      name: object.name,
      description: object.description,
      startDate: object.startDate,
      endDate: object.endDate,
      coordinate: object.coordinate,
      type: object.type,
      image: object.image,
      notification: notificationDTO ?? const [],
      topics: object.topics?? const [],
      categories: object.categories?? const [],
    );
  }
}
