import 'dart:developer';
import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:mongo_pool/mongo_pool.dart';
import 'package:space_backend/src/env/platform_environment.dart';

Future<HttpServer> run(Handler handler, InternetAddress ip, int port) async {
  final ip = InternetAddress.anyIPv4;
  final port = int.tryParse(PlatformEnvironment.port ?? '8080') ?? 8080;
  log('Server started on port $port');
  await initializeMongo();
  return serve(handler, ip, port);
}

Future<void> initializeMongo() async {
  try {
    await MongoDbPoolService(
      MongoPoolConfiguration(
        maxLifetimeMilliseconds: 100000,
        uriString: PlatformEnvironment.mongoUri,
        poolSize: 2,
      ),
    ).open();
  } on Exception catch (e) {
    log('Error opening pool: $e');
  }
}
