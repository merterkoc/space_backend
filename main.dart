import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:mongo_pool/mongo_pool.dart';
import 'package:space_backend/src/core/logger/logger.dart';
import 'package:space_backend/src/env/platform_environment.dart';

Future<void> init(InternetAddress ip, int port) async {
  final ip = InternetAddress.anyIPv4;
  final port = int.tryParse(PlatformEnvironment.port ?? '8080') ?? 8080;
  logger.i('Server started on port $port, ip $ip');
  //await initializeMongo();
}

Future<HttpServer> run(Handler handler, InternetAddress ip, int port) async {
  return serve(handler, ip, PlatformEnvironment.portInt);
}

Future<void> initializeMongo() async {
  try {
    final pool = MongoDbPoolService(
      MongoPoolConfiguration(
        maxLifetimeMilliseconds: 100000,
        uriString: PlatformEnvironment.mongoUri,
        poolSize: 1,
      ),
    );
    await pool.open();
    logger.i('MongoDB connected');
  } on Exception catch (e) {
    logger.e('MongoDB connection failed: $e');
  }
}
