import 'package:acha/domain/apis/index.dart';

class NoticeApiEndpoints {
  static const String notice = '${BaseApiEndpoints.baseUri}/notifications';

  static String noticeListDetail(String courseCode) {
    return '$notice?code=$courseCode';
  }

  static String noticeDetail(int noticeId) {
    return '$notice/$noticeId';
  }
}
