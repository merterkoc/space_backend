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

  Future<Map<String, dynamic>?> findOne(
    String collectionName,
    SelectorBuilder filter,
  ) async {
    final db = await mongoDbPoolService.acquire();
    try {
      final collection = db.collection(collectionName);
      return await collection.findOne(filter);
    } catch (e) {
      throw Exception(e);
    } finally {
      await mongoDbPoolService.release(db);
    }
  }

  Future<List<Map<String, dynamic>>> find(
    String collectionName, {
    SelectorBuilder? filter,
  }) async {
    final db = await mongoDbPoolService.acquire();
    try {
      final collection = db.collection(collectionName);
      return await collection.find(filter).toList();
    } catch (e) {
      throw Exception(e);
    } finally {
      await mongoDbPoolService.release(db);
    }
  }

  Future<Map<String, dynamic>> updateOneById(
    String collectionName,
    ObjectId id,
    Map<String, dynamic> modify,
  ) async {
    final db = await mongoDbPoolService.acquire();
    try {
      final updateData = {
        r'$set': modify,
      };
      final collection = db.collection(collectionName);
      return await collection.update(
        where.id(id),
        updateData,
      );
    } catch (e) {
      throw Exception(e);
    } finally {
      await mongoDbPoolService.release(db);
    }
  }
}
