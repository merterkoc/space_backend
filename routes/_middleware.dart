import 'package:dart_frog/dart_frog.dart';

Handler middleware(Handler handler) {
  return (context) async {
    final response = await handler(context);
    handler.use(requestLogger());
    return response;
  };
}
