class AuthenticationApiEndpoints {
  static const String baseUrl = 'http://127.0.0.1:8000';
  static const String signIn = '$baseUrl/signin';
  static const String signUp = '$baseUrl/signup';
  static const String refresh = '$baseUrl/access-token';
}