import 'package:dart_frog/dart_frog.dart';

extension ResponseExtensions on Response {
  Response ok({dynamic body}) {
    return Response.json(
      body: {
        'failed': false,
        'message': 'OK',
        'data': body,
      },
    );
  }

  Response created({dynamic body}) {
    return Response.json(
      statusCode: 201,
      body: {
        'failed': false,
        'message': 'Created',
        'data': body,
      },
    );
  }

  Response badRequest({String message = 'Bad request'}) {
    return Response.json(
      statusCode: 400,
      body: {
        'failed': true,
        'message': message,
      },
    );
  }

  Response unauthorized({dynamic body}) {
    return Response.json(
      statusCode: 401,
      body: {
        'failed': true,
        'message': 'Unauthorized',
        'body': body,
      },
    );
  }

  Response forbidden({dynamic body}) {
    return Response.json(
      statusCode: 403,
      body: {
        'failed': true,
        'message': 'Forbidden',
        'body': body,
      },
    );
  }

  Response notFound({String message = 'Not found'}) {
    return Response.json(
      statusCode: 404,
      body: {
        'failed': true,
        'message': message,
      },
    );
  }

  Response methodNotAllowed(RequestContext context) {
    return Response.json(
      statusCode: 405,
      body: {
        'message': 'Method ${context.request.method} not allowed',
        'path': context.request.uri.path,
      },
    );
  }

  Response unknownError({String? body}) {
    return Response.json(
      statusCode: 500,
      body: {
        'failed': true,
        'message': 'Unknown error',
        'body': body,
      },
    );
  }
}
