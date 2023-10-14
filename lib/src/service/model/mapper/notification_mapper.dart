import 'package:space_backend/src/service/model/dto/notification_dto/notification_dto.dart';
import 'package:space_backend/src/service/model/entity/notification_entity/notification_entity.dart';
import 'package:space_backend/src/util/mapper/mapper.dart';

class NotificationMapper with Mapper<NotificationDTO, NotificationEntity> {
  @override
  NotificationEntity call(NotificationDTO object) {
    return NotificationEntity(
      eventId: object.eventId!,
      title: object.title,
      body: object.body,
      topics: object.topics ?? [],
      sent: object.sent,
    );
  }

  @override
  NotificationDTO from(NotificationEntity object) {
    return NotificationDTO(
      eventId: object.eventId,
      title: object.title,
      body: object.body,
      topics: object.topics,
      sent: object.sent,
    );
  }

  List<NotificationDTO> fromList(List<Map<String, dynamic>> list) {
    return list.map((e) => from(NotificationEntity.fromJson(e))).toList();
  }
}
