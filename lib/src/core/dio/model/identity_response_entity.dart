class IdentityResponseEntity<T> {
  IdentityResponseEntity({required this.statusCode, this.message, this.access});

  IdentityResponseEntity.fromJson(
    Map<String, dynamic> json,
    this.statusCode,
    this.message,
    this.access,
  ) {
    statusCode = json['code'] as int;
    message = json['message'] != null ? json['message'] as String : null;
    access = json['access'] != null ? json['access'] as String : null;
  }

  late final int statusCode;
  late final String? message;
  late final String? access;

  static Map<String, dynamic> toJson(IdentityResponseEntity<dynamic> response) {
    final data = <String, dynamic>{};
    data['code'] = response.statusCode;
    data['message'] = response.message;
    data['access'] = response.access;
    return data;
  }
}
