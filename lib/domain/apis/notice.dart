import 'package:acha/domain/apis/index.dart';

class NoticeApiEndpoints {
  static const String notice = '${BaseApiEndpoints.baseUri}/notice';

  static String noticeListDetail(String code) {
    return '$notice/$code';
  }

  static String noticeDetail(String courseCode, int noticeId) {
    return '$notice/$courseCode/$noticeId';
  }
}
