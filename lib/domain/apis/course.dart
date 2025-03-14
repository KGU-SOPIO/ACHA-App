import 'package:acha/domain/apis/index.dart';

class CourseApiEndpoints {
  static const String extraction = '${BaseApiEndpoints.baseUri}/courses';
  static const String courses = '${BaseApiEndpoints.baseUri}/member-courses';
  static const String activity = '${BaseApiEndpoints.baseUri}/activities/my';
  static const String courseActivity =
      '${BaseApiEndpoints.baseUri}/activities/lecture';
  static const String assignment = '${BaseApiEndpoints.baseUri}/assignment';
  static const String notice = '${BaseApiEndpoints.baseUri}/notification';

  static String activityDetail(String code) {
    return '$courseActivity?code=$code';
  }

  static String assignmentDetail(String code) {
    return '$assignment/$code';
  }

  static String noticeDetail(int id) {
    return '$notice/$id';
  }
}
