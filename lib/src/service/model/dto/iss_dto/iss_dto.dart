import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:space_backend/src/service/model/dto/coordinate_dto/coordinate_dto.dart';

part 'iss_dto.freezed.dart';

part 'iss_dto.g.dart';

@freezed
@immutable
class ISSDTO with _$ISSDTO {
  @JsonSerializable(explicitToJson: true, createToJson: true)
  factory ISSDTO({
    @JsonKey(name: 'coordinate') required CoordinateDTO coordinate,
    @JsonKey(name: 'timestamp') required int timestamp,
  }) = _ISSDTO;

  factory ISSDTO.fromJson(Map<String, Object?> json) => _$ISSDTOFromJson(json);
}
