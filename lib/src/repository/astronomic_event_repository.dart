import 'dart:io';

import 'package:mongo_pool/mongo_pool.dart';
import 'package:space_backend/src/core/dio/model/response_entity.dart';
import 'package:space_backend/src/repository/base_repository/base_repository.dart';
import 'package:space_backend/src/repository/mongo_pipeline/astronomic_event_pipeline.dart';
import 'package:space_backend/src/service/model/entity/astronomic_event_entity/astronomic_event_entity.dart';
import 'package:space_backend/src/util/exception/custom_exception.dart';

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

  Future<ResponseEntity<List<AstronomicEventEntity>>>
      getAstronomicEvent() async {
    final result = await mongoClient.find('astronomic_event');
    final newResult = List<AstronomicEventEntity>.from(
      result.map((e) {
        e
          ..remove('createdAt')
          ..remove('updatedAt');
        return AstronomicEventEntity.fromJson(e);
      }),
    );

    return ResponseEntity<List<AstronomicEventEntity>>(
      statusCode: 200,
      data: newResult,
    );
  }

  Future<ResponseEntity<List<AstronomicEventEntity>>> getAstronomicEventList(
    int page,
    int size,
  ) async {
    final result = await mongoClient.find(
      'astronomic_event',
      filter: SelectorBuilder()
        ..limit(size)
        ..skip((page - 1) * size),
    );
    final newResult = result.map((e) {
      e
        ..remove('createdAt')
        ..remove('updatedAt');
      return e;
    }).toList();
    return ResponseEntity(
      statusCode: 200,
      data: List<AstronomicEventEntity>.from(
        newResult.map(AstronomicEventEntity.fromJson),
      ),
    );
  }

  Future<ResponseEntity<List<AstronomicEventEntity>>>
      getAstronomicEventListByTopic(
    int page,
    int size,
    String topic,
  ) async {
    final result = await mongoClient.findAggregateToStream(
      'astronomic_event',
      AstronomicEventPipeline.findByTopic(topic, page, size),
    );
    final newResult = result.map((e) {
      e
        ..remove('createdAt')
        ..remove('updatedAt');
      return e;
    }).toList();
    return ResponseEntity(
      statusCode: 200,
      data: List<AstronomicEventEntity>.from(
        newResult.map(AstronomicEventEntity.fromJson),
      ),
    );
  }

  Future<ResponseEntity<Map<String, dynamic>>> getAstronomicEventById(
    String id,
  ) async {
    if (!ObjectId.isValidHexId(id)) {
      throw InvalidIdException();
    }
    final result = await mongoClient.findOne(
      'astronomic_event',
      where.id(ObjectId.parse(id)),
    );
    if (result == null) {
      return ResponseEntity(statusCode: 404, message: 'Not found');
    }
    final newResult = result
      ..remove('createdAt')
      ..remove('updatedAt');
    return ResponseEntity(
      statusCode: result.isNotEmpty ? 200 : 404,
      data: newResult,
    );
  }

  Future<ResponseEntity<T>> putAstronomicEvent<T>(
    AstronomicEventEntity astronomicEvent,
    String id,
  ) async {
    await mongoClient.updateOneById(
      'astronomic_event',
      ObjectId.parse(id),
      astronomicEvent.toJson(),
    );
    return ResponseEntity(
      statusCode: 200,
      data: id as T,
    );
  }
}
