import 'package:acha/constants/apis/index.dart';

class NoticeApiEndpoints {
  static const String notice = '${BaseApiEndpoints.baseUrl}/notice';

  static String noticeListDetail(String courseCode) {
    return '$notice/$courseCode';
  }

  static String noticeDetail(String courseCode, int noticeId) {
    return '$notice/$courseCode/$noticeId';
  }
}