import 'package:acha/domain/apis/index.dart';

class AuthenticationApiEndpoints {
  static const String signIn = '${BaseApiEndpoints.baseUri}/members/signin';
  static const String signUp = '${BaseApiEndpoints.baseUri}/members/signup';
  static const String fetchUser = '${BaseApiEndpoints.baseUri}/members/data';
  static const String reissue = '${BaseApiEndpoints.baseUri}/members/reissue';
  static const String logout = '${BaseApiEndpoints.baseUri}/members/logout';
  static const String signout = '${BaseApiEndpoints.baseUri}/members/signout';
}
