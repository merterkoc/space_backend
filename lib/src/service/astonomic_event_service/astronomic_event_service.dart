import 'dart:async';

import 'package:space_backend/src/core/dio/model/response_entity.dart';
import 'package:space_backend/src/repository/astronomic_event_repository.dart';
import 'package:space_backend/src/repository/notification_repository.dart';
import 'package:space_backend/src/repository/topic_repository.dart';
import 'package:space_backend/src/service/model/dto/astronomic_event_detail_dto/astronomic_event_detail_dto.dart';
import 'package:space_backend/src/service/model/dto/astronomic_event_dto/astronomic_event_dto.dart';
import 'package:space_backend/src/service/model/dto/coordinate_dto/coordinate_dto.dart';
import 'package:space_backend/src/service/model/entity/astronomic_event_entity/astronomic_event_entity.dart';
import 'package:space_backend/src/service/model/mapper/astronomic_event_detail_mapper.dart';
import 'package:space_backend/src/service/model/mapper/astronomic_event_mapper.dart';
import 'package:space_backend/src/service/model/mapper/notification_mapper.dart';
import 'package:space_backend/src/util/exception/custom_exception.dart';

class AstronomicEventService {
  AstronomicEventService() {
    _astronomicEventRepository = AstronomicEventRepository();
    _topicRepository = TopicRepository();
  }

  late final AstronomicEventRepository _astronomicEventRepository;
  late final TopicRepository _topicRepository;

  Future<ResponseEntity<AstronomicEventDetailDTO>> getAstronomicEventById(
    String id,
  ) async {
    final astronomicEvent =
        await _astronomicEventRepository.getAstronomicEventById(id);
    final notification = await NotificationRepository()
        .getNotificationsByAstronomicEventId<dynamic>(id);

    if (astronomicEvent.data == null) {
      throw NotFoundException();
    }

    final notificationList = notification.data != null
        ? NotificationMapper().fromList(
            notification.data! as List<Map<String, dynamic>>,
          )
        : null;

    final result = AstronomicEventDetailMapper().from(
      AstronomicEventEntity.fromJson(astronomicEvent.data!),
      notificationDTO: notificationList,
    );
    return ResponseEntity(
      statusCode: 200,
      data: result,
    );
  }

  Future<List<AstronomicEventDTO>> getAstronomicEventListByTopic(
    int page,
    int size,
    String nearestTopic,
  ) async {
    final result =
        await _astronomicEventRepository.getAstronomicEventListByTopic(
      page,
      size,
      nearestTopic,
    );
    return result.data!.map((e) => AstronomicEventMapper().from(e)).toList();
  }
}
