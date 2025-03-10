import 'package:acha/domain/apis/index.dart';

class CourseApiEndpoints {
  static const String extraction = '${BaseApiEndpoints.baseUri}/activities';
  static const String courses = '${BaseApiEndpoints.baseUri}/member-courses';
  static const String activity = '${BaseApiEndpoints.baseUri}/activity';
  static const String assignment = '${BaseApiEndpoints.baseUri}/assignment';
  static const String notice = '${BaseApiEndpoints.baseUri}/notification';

  static String activityDetail(int id) {
    return '$activity/$id';
  }

  static String assignmentDetail(int id) {
    return '$assignment/$id';
  }

  static String noticeDetail(int id) {
    return '$notice/$id';
  }
}
