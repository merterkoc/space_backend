final class InvalidIssuerException implements Exception {
  InvalidIssuerException(this.issuer);

  final String? issuer;

  @override
  String toString() {
    return 'InvalidIssuerException{message: $issuer}';
  }
}
