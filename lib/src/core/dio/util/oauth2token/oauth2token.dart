import 'package:freezed_annotation/freezed_annotation.dart';

part 'oauth2token.freezed.dart';

part 'oauth2token.g.dart';

@freezed
@immutable
class OAuth2Token with _$OAuth2Token {
  @JsonSerializable(explicitToJson: true, createToJson: true)
  factory OAuth2Token({
    @JsonKey() String? accessToken,
    @JsonKey() String? tokenType,
    @JsonKey() int? expiresIn,
    @JsonKey() String? refreshToken,
    @JsonKey() String? scope,
  }) = _OAuth2Token;

  factory OAuth2Token.fromJson(Map<String, Object?> json) =>
      _$OAuth2TokenFromJson(json);
}


// class OAuth2Token{
//   /// {macro oauth2_token}
//    OAuth2Token({
//     required this.accessToken,
//     this.tokenType = 'bearer',
//     this.expiresIn,
//     this.refreshToken,
//     this.scope,
//   });
//
//   /// The access token string as issued by the authorization server.
//   final String accessToken;
//
//   /// The type of token this is, typically just the string “bearer”.
//   final String? tokenType;
//
//   /// If the access token expires, the server should reply
//   /// with the duration of time the access token is granted for.
//   final int? expiresIn;
//
//   /// Token which applications can use to obtain another access token.
//   final String? refreshToken;
//
//   /// Application scope granted as defined in https://oauth.net/2/scope
//   final String? scope;
//
//   Map<String, dynamic> toJson() {
//     return {
//       'accessToken': accessToken,
//       'tokenType': tokenType,
//       'expiresIn': expiresIn,
//       'refreshToken': refreshToken,
//       'scope': scope
//     };
//   }
//
// }
