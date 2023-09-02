import 'dart:io';

import 'package:space_backend/src/core/dio/model/response_entity.dart';
import 'package:space_backend/src/repository/base_repository/base_repository.dart';
import 'package:space_backend/src/service/model/entity/astronomic_event_entity/astronomic_event_entity.dart';

class AstronomicEventRepository with BaseRepository {
  Future<ResponseEntity<T>> saveAstronomicEvent<T>(
    AstronomicEventEntity astronomicEvent,
  ) async {
    final result = await mongoClient.insertOne(
      'astronomic_event',
      astronomicEvent.toJson(),
    );
    return ResponseEntity(
      statusCode: result.ok == 1 ? HttpStatus.created : HttpStatus.badRequest,
      data: result.id as T,
      message: result.errmsg,
    );
  }
}
