import 'package:acha/domain/apis/index.dart';

class NoticeApiEndpoints {
  static const String notice = '${BaseApiEndpoints.baseUri}/notice';

  static String noticeListDetail(int id) {
    return '$notice/$id';
  }

  static String noticeDetail(int courseId, int noticeId) {
    return '$notice/$courseId/$noticeId';
  }
}
