import 'package:dart_frog/dart_frog.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

extension Token on Request {
  String? get token => headers['Authorization']?.replaceFirst('Bearer ', '');

  String? get userId => JwtDecoder.decode(token!)['sub'].toString();
}
