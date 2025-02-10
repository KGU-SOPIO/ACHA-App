import 'package:acha/constants/apis/index.dart';

class AuthenticationApiEndpoints {
  static const String signIn = '${BaseApiEndpoints.baseUrl}/api/v1/member/signin';
  static const String signUp = '${BaseApiEndpoints.baseUrl}/api/v1/member/signup';
  static const String fetchUser = '${BaseApiEndpoints.baseUrl}/api/v1/member/data';
  static const String refresh = '${BaseApiEndpoints.baseUrl}/api/v1/member/reissue';
}