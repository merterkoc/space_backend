import 'package:space_backend/src/core/mongo/mongo_client.dart';

mixin BaseRepository {
  final MongoClient mongoClient = MongoClient();
}
