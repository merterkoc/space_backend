import 'dart:async';

import 'package:space_backend/src/core/logger/logger.dart';
import 'package:space_backend/src/repository/iss_repository.dart';
import 'package:space_backend/src/service/model/dto/iss_dto/iss_dto.dart';
import 'package:space_backend/src/service/model/mapper/iss_mapper.dart';
import 'package:space_backend/src/util/observable.dart';

typedef IssObservable = Observable;

class ISSService extends IssObservable {
  factory ISSService() {
    return _instance;
  }

  ISSService._internal() : super() {
    _issRepository = ISSRepository();
  }

  final List<ISSDTO> _issDTOList = [];

  static final ISSService _instance = ISSService._internal();

  late final ISSRepository _issRepository;

  Future<List<ISSDTO>> getISSCurrentLocation() async {
    try {
      final result = await _issRepository.getISSCurrentLocation();
      notify(result);

      final issDto = ISSMapper().from(result);
      _issDTOList.add(issDto);
      if (_issDTOList.length > 3000) {
        _issDTOList.removeAt(0);
      }
      return _issDTOList;
    } on Exception {
      logger.e('ISSService.getISSCurrentLocation: Error');
      rethrow;
    }
  }
}
