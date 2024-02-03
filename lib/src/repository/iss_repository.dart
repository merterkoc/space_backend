import 'dart:io';

import 'package:space_backend/src/const/http/iss_const.dart';
import 'package:space_backend/src/core/dio/model/iss_entity.dart';
import 'package:space_backend/src/repository/base_repository/base_repository.dart';

class ISSRepository with BaseRepository {
  Future<ISSResponseEntity> getISSCurrentLocation() async {
    final result = await issClient
        .get<Map<String, dynamic>>(
          ISSConstants.issNow,
        )
        .onError(
          (error, stackTrace) => throw Exception(
            error.toString(),
          ),
        );
    if (result.statusCode == HttpStatus.ok) {
      final responseEntity = ISSResponseEntity.fromJson(
        result.data!,
      );

      return ISSResponseEntity(
        issPositionEntity: responseEntity.issPositionEntity,
        timestamp: responseEntity.timestamp,
      );
    } else {
      throw Exception('Fail');
    }
  }

  Future<ISSResponseEntity> updateISSCurrentLocation() async {
    final result = await getISSCurrentLocation();
    try {
      await _trimISSLocationData();
    } on Exception catch (e) {
      throw Exception(e.toString());
    }
    await mongoClient.insertOne(
      'iss_position',
      result.toJson(),
    );
    return result;
  }

  Future<void> _trimISSLocationData() async {
    await mongoClient.trimCollection('iss_position', 1000);
  }

  Future<List<ISSResponseEntity>> getISSDTOList() async {
    final result = await mongoClient.find('iss_position');
    final newResult = result.map((e) {
      e
        ..remove('createdAt')
        ..remove('updatedAt');
      return e;
    }).toList();
    return List<ISSResponseEntity>.from(
      newResult.map(ISSResponseEntity.fromJson),
    );
  }
}
