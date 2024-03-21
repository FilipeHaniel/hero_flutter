class BaseUrl {
  static String get baseUrl => const String.fromEnvironment(
        'baseUrl',
        defaultValue: 'http://localhost:3001/v3/api',
      );
}
