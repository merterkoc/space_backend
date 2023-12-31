import 'package:dart_frog/dart_frog.dart';
import 'package:shelf_cors_headers/shelf_cors_headers.dart' as shelf;

Handler middleware(Handler handler) {
  return handler.use(requestLogger()).use(
        fromShelfMiddleware(
          shelf.corsHeaders(
            headers: {
              ///Handling Cross-Origin Resource Sharing (CORS)
              ///https://dartfrog.vgv.dev/docs/advanced/cors
              shelf.ACCESS_CONTROL_ALLOW_ORIGIN: '*',
              shelf.ORIGIN: '*',
              shelf.ACCESS_CONTROL_ALLOW_METHODS: 'GET,PUT,PATCH,POST,DELETE',
              shelf.ACCESS_CONTROL_ALLOW_HEADERS:
                  '*',
              shelf.ACCESS_CONTROL_ALLOW_CREDENTIALS: 'false',
            },
          ),
        ),
      );
}
