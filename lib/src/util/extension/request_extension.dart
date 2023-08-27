import 'package:dart_frog/dart_frog.dart';

extension ResponseExtensions on Response {
  Response ok({dynamic body}) {
    return Response.json(
      body: body,
    );
  }

  Response created({dynamic body}) {
    return Response.json(
      statusCode: 201,
      body: body,
    );
  }

  Response badRequest(String message) {
    return Response.json(statusCode: 400, body: {
      'message': message,
    });
  }

  Response unauthorized({dynamic body}) {
    return Response.json(
      statusCode: 401,
      body: body,
    );
  }

  Response forbidden({dynamic body}) {
    return Response.json(
      statusCode: 403,
      body: body,
    );
  }

  Response notFound({dynamic body}) {
    return Response.json(
      statusCode: 404,
      body: body,
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
}
