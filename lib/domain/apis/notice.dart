import 'package:acha/domain/apis/index.dart';

class NoticeApiEndpoints {
  static const String notice = '${BaseApiEndpoints.baseUri}/notifications';

  static String noticeListDetail(String code) {
    return '$notice?code=$code';
  }

  static String noticeDetail(int noticeId) {
    return '$notice/$noticeId';
  }
}
