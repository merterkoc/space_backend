import 'package:space_backend/src/core/dio/model/iss_entity.dart';
import 'package:space_backend/src/core/dio/model/response_entity.dart';
import 'package:space_backend/src/service/iss_service/iss_service.dart';
import 'package:test/test.dart';

void main() {
  var issService = ISSService();
  setUp(() {
    return {
      issService = ISSService(),
    };
  });
  group('ISS Service Test', () {
    test('Iss get request test.', () {
      final result = issService.getISSCurrentLocation();
      expect(result, isA<Future<ResponseEntity<ISSResponseEntity>>>());
    });
  });
}
