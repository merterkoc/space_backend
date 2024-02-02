import 'package:dart_frog/dart_frog.dart';
import 'package:space_backend/src/service/iss_service/iss_service.dart';
import 'package:space_backend/src/util/extension/request_extension.dart';

class ISSController {
  final ISSService _issService = ISSService();

  Future<Response> updateIss(RequestContext context) async {
    try {
      await _issService.updateISSCurrentLocation();
      return Response().ok();
    } on Exception catch (e) {
      return Response().unknownError(
        body: e.toString(),
      );
    }
  }

  Future<Response> fetchISSInformation(RequestContext context) async {
    try {
      final response = await _issService.getISSDTOList();
      return Response().ok(
        body: response,
      );
    } on Exception catch (e) {
      return Response().unknownError(
        body: e.toString(),
      );
    }
  }
}
