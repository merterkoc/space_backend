import 'dart:async';

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

  Future<void> getISSCurrentLocation() async {
    try {
      final result = await _issRepository.getISSCurrentLocation();
      notify(result);
    } on Exception {
      return;
    }
  }
}
