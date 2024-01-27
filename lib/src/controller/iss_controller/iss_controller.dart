import 'package:dart_frog/dart_frog.dart';
import 'package:space_backend/src/repository/iss_repository.dart';
import 'package:space_backend/src/util/extension/request_extension.dart';

class ISSController {
  final ISSRepository _issRepository = ISSRepository();

  Future<Response> fetchISSInformation(RequestContext context) async {
    try {
      final response = await _issRepository.getISSDTOList();
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
