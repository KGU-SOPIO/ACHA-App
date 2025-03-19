export 'package:acha/domain/apis/authentication.dart';
export 'package:acha/domain/apis/user.dart';
export 'package:acha/domain/apis/course.dart';
export 'package:acha/domain/apis/notice.dart';
export 'package:acha/domain/apis/today_course.dart';
export 'package:acha/domain/apis/fcm_token.dart';
export 'package:acha/domain/apis/alert.dart';

class BaseApiEndpoints {
  /// DEBUG
  /// iOS: 127.0.0.1
  /// Android: 10.0.2.2
  static const String version = 'v1';
  static const String baseUri = 'https://prod.sopio.kr/api/$version';
}
