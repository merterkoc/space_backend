import 'dart:async';

import 'package:space_backend/src/core/dio/model/iss_entity.dart';
import 'package:space_backend/src/repository/iss_repository.dart';
import 'package:space_backend/src/util/observable.dart';

typedef IssObservable = Observable;

class ISSService extends IssObservable {
  factory ISSService() {
    return _instance;
  }

  ISSService._internal() : super() {
    _issRepository = ISSRepository();
  }

  static final ISSService _instance = ISSService._internal();

  late final ISSRepository _issRepository;

  Future<void> updateISSCurrentLocation() async {
    try {
      final result = await _issRepository.updateISSCurrentLocation();
      notify(result);
    } on Exception catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<List<ISSResponseEntity>> getISSDTOList() {
    return _issRepository.getISSDTOList();
  }
}
