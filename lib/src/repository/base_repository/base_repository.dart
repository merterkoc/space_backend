import 'package:space_backend/src/core/dio/iss_client/iss_client.dart';
import 'package:space_backend/src/core/mongo/mongo_client.dart';

mixin BaseRepository {
  final MongoClient mongoClient = MongoClient();
  final ISSClient issClient = ISSClient();
}
