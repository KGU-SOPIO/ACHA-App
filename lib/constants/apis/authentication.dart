import 'package:acha/constants/apis/index.dart';

class AuthenticationApiEndpoints {
  static const String signIn = '${BaseApiEndpoints.baseUrl}/signin';
  static const String signUp = '${BaseApiEndpoints.baseUrl}/signup';
  static const String refresh = '${BaseApiEndpoints.baseUrl}/access-token';
}