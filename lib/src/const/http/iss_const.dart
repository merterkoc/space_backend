mixin ISSConstants {
  static String get baseUrl => 'http://api.open-notify.org/';

  static String get issNow => 'iss-now.json/';

  static Map<String, dynamic> get header => {
        'Content-Type': 'application/json',
      };
}
