import 'dart:math';

import 'package:space_backend/src/service/model/dto/coordinate_dto/coordinate_dto.dart';
import 'package:space_backend/src/service/model/dto/topic_dto/topic_dto.dart';

mixin LocationHelper {
  static List<CoordinateDTO> getTopicsByCoordinate(
    CoordinateDTO targetCoordinate,
    List<CoordinateDTO> coordinates,
    int count,
  ) {
    return _findNearestCoordinates(targetCoordinate, coordinates, count);
  }

  static List<CoordinateDTO> _findNearestCoordinates(
    CoordinateDTO target,
    List<CoordinateDTO> coordinates,
    int count,
  ) {
    coordinates.sort(
      (a, b) {
        final distanceA = sqrt(
          pow(a.latitude! - target.latitude!, 2) +
              pow(a.longitude! - target.longitude!, 2),
        );
        final distanceB = sqrt(
          pow(b.latitude! - target.latitude!, 2) +
              pow(b.longitude! - target.longitude!, 2),
        );
        return distanceA.compareTo(distanceB);
      },
    );

    return coordinates.sublist(0, min(count, coordinates.length));
  }

  static String getTopicKeyByCoordinate(
    CoordinateDTO targetCoordinate,
    List<TopicDTO> topics,
  ) {
    final coordinates = topics.map((e) => e.coordinate).toList();
    final result = _findNearestCoordinates(targetCoordinate, coordinates, 1);
    final topic =
        topics.firstWhere((element) => element.coordinate == result.first);
    return topic.key;
  }
}
