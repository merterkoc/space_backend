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
      mongoDbPoolService.release(db);
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
      mongoDbPoolService.release(db);
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
      mongoDbPoolService.release(db);
    }
  }

  Future<List<Map<String, dynamic>>> findAggregateToStream(
    String collectionName,
    List<Map<String, Object>> pipeline,
  ) async {
    final db = await mongoDbPoolService.acquire();
    try {
      final collection = db.collection(collectionName);
      return await collection.aggregateToStream(pipeline).toList();
    } catch (e) {
      throw Exception(e);
    } finally {
      mongoDbPoolService.release(db);
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
      mongoDbPoolService.release(db);
    }
  }

  Future<void> trimCollection(
    String collectionName,
    int maxCollectionSize,
  ) async {
    final db = await mongoDbPoolService.acquire();
    try {
      final collection = db.collection(collectionName);
      final currentSize = await collection.count();

      if (currentSize > maxCollectionSize) {
        final oldestDocuments = await collection
            .find(
              where.sortBy('createdAt').limit(currentSize - maxCollectionSize),
            )
            .toList();

        for (final doc in oldestDocuments) {
          await collection.remove(where.id(doc['_id'] as ObjectId));
        }
      }
    } catch (e) {
      throw Exception(e);
    } finally {
      mongoDbPoolService.release(db);
    }
  }
}
