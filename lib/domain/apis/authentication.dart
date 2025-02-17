import 'package:acha/domain/apis/index.dart';

class AuthenticationApiEndpoints {
  static const String signIn =
      '${BaseApiEndpoints.baseUri}/api/v1/member/signin';
  static const String signUp =
      '${BaseApiEndpoints.baseUri}/api/v1/member/signup';
  static const String fetchUser =
      '${BaseApiEndpoints.baseUri}/api/v1/member/data';
  static const String reissue =
      '${BaseApiEndpoints.baseUri}/api/v1/member/reissue';
  static const String withdraw =
      '${BaseApiEndpoints.baseUri}/api/v1/member/withdraw';
}
