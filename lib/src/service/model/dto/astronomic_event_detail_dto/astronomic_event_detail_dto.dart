import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mongo_pool/mongo_pool.dart';
import 'package:space_backend/src/service/model/dto/coordinate_dto/coordinate_dto.dart';
import 'package:space_backend/src/service/model/dto/notification_dto/notification_dto.dart';
import 'package:space_backend/src/util/helper/mongo_helper.dart';

part 'astronomic_event_detail_dto.freezed.dart';

part 'astronomic_event_detail_dto.g.dart';

@freezed
@immutable
class AstronomicEventDetailDTO with _$AstronomicEventDetailDTO {
  @JsonSerializable(explicitToJson: true, createToJson: true)
  factory AstronomicEventDetailDTO({
    @JsonKey(name: 'notification') required List<NotificationDTO> notification,
    @JsonKey(
      name: 'id',
      required: false,
      disallowNullValue: false,
      fromJson: MongoHelper.getObjectId,
    )
    String? id,
    @JsonKey(name: 'name', required: true) String? name,
    @JsonKey(name: 'description', required: true) String? description,
    @JsonKey(name: 'start_date', required: true) DateTime? startDate,
    @JsonKey(name: 'end_date', required: true) DateTime? endDate,
    @JsonKey(name: 'coordinate', required: true) CoordinateDTO? coordinate,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'image', required: false) List<String>? image,
  }) = _AstronomicEventDetailDTO;

  factory AstronomicEventDetailDTO.fromJson(Map<String, Object?> json) =>
      _$AstronomicEventDetailDTOFromJson(json);
}
