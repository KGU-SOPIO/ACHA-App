export 'package:acha/domain/apis/authentication.dart';
export 'package:acha/domain/apis/user.dart';
export 'package:acha/domain/apis/course.dart';
export 'package:acha/domain/apis/notice.dart';
export 'package:acha/domain/apis/today_course.dart';
export 'package:acha/domain/apis/fcm_token.dart';
export 'package:acha/domain/apis/alert.dart';

class BaseApiEndpoints {
  static const String baseUri = 'https://api.sopio.kr';

  /// DEBUG
  /// iOS: 127.0.0.1
  /// Android: 10.0.2.2
}
