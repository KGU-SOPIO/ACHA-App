import 'package:acha/domain/apis/index.dart';

class NoticeApiEndpoints {
  static const String notice = '${BaseApiEndpoints.baseUri}/notifications';

  static String noticeListDetail(String courseCode) {
    return '$notice?code=$courseCode';
  }

  static String noticeDetail(String noticeId) {
    return '$notice/$noticeId';
  }
}
