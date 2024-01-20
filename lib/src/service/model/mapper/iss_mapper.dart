import 'package:space_backend/src/core/dio/model/iss_entity.dart';
import 'package:space_backend/src/service/model/dto/coordinate_dto/coordinate_dto.dart';
import 'package:space_backend/src/service/model/dto/iss_dto/iss_dto.dart';
import 'package:space_backend/src/util/mapper/mapper.dart';

class ISSMapper with Mapper<ISSDTO, ISSResponseEntity> {
  @override
  ISSDTO from(ISSResponseEntity object) {
    return ISSDTO(
      coordinate: CoordinateDTO(
        latitude: double.parse(object.issPositionEntity!.latitude),
        longitude: double.parse(object.issPositionEntity!.longitude),
      ),
      timestamp: object.timestamp,
    );
  }

  @override
  ISSResponseEntity call(ISSDTO object) {
    throw UnimplementedError();
  }
}
