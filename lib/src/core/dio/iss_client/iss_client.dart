import 'package:space_backend/src/const/http/iss_const.dart';
import 'package:space_backend/src/core/dio/interface/i_dio_client.dart';

class ISSClient extends IDioClient {
  factory ISSClient() {
    return _instance;
  }

  ISSClient._() : super(url: ISSConstants.baseUrl);

  // Singleton instance
  static final ISSClient _instance = ISSClient._();
}
