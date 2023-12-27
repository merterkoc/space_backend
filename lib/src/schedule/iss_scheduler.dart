import 'dart:async';

import 'package:space_backend/src/service/iss_service/iss_service.dart';

class ISSScheduler {
  final ISSService _issService = ISSService();

  Future<void> getSchedule() async {
    Timer.periodic(
      const Duration(seconds: 5),
      (timer) async {
        try {
          await _issService.getISSCurrentLocation();
        } on Exception {
          rethrow;
        }
      },
    );
  }
}
