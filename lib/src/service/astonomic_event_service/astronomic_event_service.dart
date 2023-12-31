import 'dart:async';

import 'package:space_backend/src/core/dio/model/response_entity.dart';
import 'package:space_backend/src/repository/astronomic_event_repository.dart';
import 'package:space_backend/src/repository/notification_repository.dart';
import 'package:space_backend/src/service/model/dto/astronomic_event_detail_dto/astronomic_event_detail_dto.dart';
import 'package:space_backend/src/service/model/dto/astronomic_event_dto/astronomic_event_dto.dart';
import 'package:space_backend/src/service/model/dto/event_category_dto/event_category_dto.dart';
import 'package:space_backend/src/service/model/entity/astronomic_event_entity/astronomic_event_entity.dart';
import 'package:space_backend/src/service/model/mapper/astronomic_event_detail_mapper.dart';
import 'package:space_backend/src/service/model/mapper/astronomic_event_mapper.dart';
import 'package:space_backend/src/service/model/mapper/notification_mapper.dart';
import 'package:space_backend/src/util/exception/custom_exception.dart';

class AstronomicEventService {
  AstronomicEventService() {
    _astronomicEventRepository = AstronomicEventRepository();
  }

  late final AstronomicEventRepository _astronomicEventRepository;

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

  Future<List<AstronomicEventDTO>> getAstronomicEventList(
    int page,
    int size,
  ) async {
    final result = await _astronomicEventRepository.getAstronomicEventList(
      page,
      size,
    );
    return result.data!.map((e) => AstronomicEventMapper().from(e)).toList();
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

  Future<EventCategoryDTO> getAstronomicEventCategoryList() {
    return _astronomicEventRepository.getAstronomicEventCategoryList();
  }

  Future<List<AstronomicEventDTO>> getAstronomicEventByCategory(
    int page,
    int size,
    String category,
  ) async {
    final result =
        await _astronomicEventRepository.getAstronomicEventByCategory(
      page,
      size,
      category,
    );
    return result.data!.map((e) => AstronomicEventMapper().from(e)).toList();
  }
}
