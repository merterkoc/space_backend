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
}
