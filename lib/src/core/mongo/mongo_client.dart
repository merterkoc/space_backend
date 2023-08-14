import 'package:mongo_pool/mongo_pool.dart';

class MongoClient {
  final MongoDbPoolService mongoDbPoolService =
      MongoDbPoolService.getInstance();

  Future<WriteResult> insertOne(
    String collectionName,
    Map<String, dynamic> data,
  ) async {
    final db = await mongoDbPoolService.acquire();
    try {
      final collection = db.collection(collectionName);
      final result = await collection.insertOne(
        {
          ...data,
          'createdAt': DateTime.now().toUtc(),
          'updatedAt': DateTime.now().toUtc(),
        },
      );
      return result;
    } catch (e) {
      throw Exception(e);
    } finally {
      await mongoDbPoolService.release(db);
    }
  }
}
