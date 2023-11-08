abstract class CustomException implements Exception {
  String get message;

  @override
  String toString() {
    return message;
  }
}

class InvalidIdException extends CustomException {
  @override
  String get message => 'Invalid id';
}

class NotFoundException extends CustomException {
  @override
  String get message => 'Not found';
}

class BadRequestException extends CustomException {
  @override
  String get message => 'Bad request';
}

class JsonParseException extends CustomException {
  @override
  String get message => 'JSON parse error';
}
