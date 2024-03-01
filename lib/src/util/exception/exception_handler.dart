import 'package:dart_frog/dart_frog.dart';
import 'package:space_backend/src/util/exception/custom_exception.dart';
import 'package:space_backend/src/util/extension/response_extension.dart';

mixin ExceptionHandler {
  static Response handleException(Object e) {
    if (e is NotFoundException) {
      return Response().notFound(message: e.message);
    } else if (e is BadRequestException) {
      return Response().badRequest(message: e.message);
    } else if (e is InvalidIdException) {
      return Response().badRequest(message: e.message);
    } else {
      return Response().unknownError(body: e.toString());
    }
  }
}
