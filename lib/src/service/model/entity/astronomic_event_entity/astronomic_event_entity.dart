import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mongo_pool/mongo_pool.dart';
import 'package:space_backend/src/service/model/dto/coordinate_dto/coordinate_dto.dart';
import 'package:space_backend/src/util/helper/mongo_helper.dart';

part 'astronomic_event_entity.freezed.dart';

part 'astronomic_event_entity.g.dart';

@freezed
@immutable
class AstronomicEventEntity with _$AstronomicEventEntity {
  @JsonSerializable(explicitToJson: true, createToJson: true)
  factory AstronomicEventEntity({
    @JsonKey(
      name: '_id',
      fromJson: MongoHelper.getObjectId,
      disallowNullValue: true,
      required: false,
    )
    String? id,
    @JsonKey(
      name: 'notification',
      required: false,
      fromJson: MongoHelper.getObjectIdList,
      disallowNullValue: true,
    )
    List<String?>? notification,
    @JsonKey(name: 'name', required: true) String? name,
    @JsonKey(name: 'description', required: true) String? description,
    @JsonKey(name: 'start_date', required: true) DateTime? startDate,
    @JsonKey(name: 'end_date', required: true) DateTime? endDate,
    @JsonKey(name: 'coordinate', required: true) CoordinateDTO? coordinate,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'image') List<String>? image,
  }) = _AstronomicEventEntity;

  factory AstronomicEventEntity.fromJson(Map<String, Object?> json) =>
      _$AstronomicEventEntityFromJson(json);
}
