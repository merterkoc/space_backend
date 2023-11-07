import 'package:mongo_pool/mongo_pool.dart';

mixin MongoHelper {
  static String? getObjectId(ObjectId? id) {
    return id?.toHexString();
  }

  static List<String?>? getObjectIdList(List<dynamic>? id) {
    if (id == null) return null;
    return id.map((e) => getObjectId(e as ObjectId)).toList();
  }
}
