import 'dart:async';

import 'package:space_backend/src/core/logger/logger.dart';
import 'package:space_backend/src/service/iss_service/iss_service.dart';

class ISSScheduler {
  factory ISSScheduler() {
    return _instance;
  }

  ISSScheduler._internal() {
    getSchedule();
  }

  final ISSService _issService = ISSService();

  static final ISSScheduler _instance = ISSScheduler._internal();

  Future<void> getSchedule() async {
    Timer.periodic(
      const Duration(seconds: 5),
      (timer) async {
        try {
          await _issService.getISSCurrentLocation();
        } on Exception {
          logger.e('ISSScheduler.getSchedule: Error');
        }
      },
    );
  }
}
