import 'package:mongo_pool/mongo_pool.dart';

mixin BaseRepository {
  final MongoDbPoolService mongoDbPoolService =
      MongoDbPoolService.getInstance();
}
