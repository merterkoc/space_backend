import 'package:space_backend/src/util/exception/custom_exception.dart';

abstract class AuthorizationException implements CustomException {
  @override
  String get message => 'You are not authorized to perform this action';

  @override
  String toString() {
    return message;
  }
}

class InvalidExpirationDateException extends AuthorizationException {
  InvalidExpirationDateException(this.expirationDate);

  final String? expirationDate;

  @override
  String get message => 'Invalid expiration date is $expirationDate';
}

class NullExpirationDateException extends AuthorizationException {
  @override
  String get message => 'Expiration date is null';
}

class ForbiddenException extends AuthorizationException {
  @override
  String get message => 'Forbidden';
}
