import 'dart:developer';
import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

import 'src/env/platform_environment.dart';

Future<HttpServer> run(Handler handler, InternetAddress ip, int port) async {
  final ip = InternetAddress.anyIPv4;
  final port = int.tryParse(PlatformEnvironment.port ?? '8080') ?? 8080;
  log('Server started on port $port');
  return serve(handler, ip, port);
}
