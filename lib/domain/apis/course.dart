import 'package:acha/domain/apis/index.dart';

class CourseApiEndpoints {
  static const String extraction = '${BaseApiEndpoints.baseUri}/lecture';
  static const String courses = '${BaseApiEndpoints.baseUri}/courses';
  static const String activity = '${BaseApiEndpoints.baseUri}/activity';
  static const String assignment = '${BaseApiEndpoints.baseUri}/assignment';
  static const String notice = '${BaseApiEndpoints.baseUri}/notification';

  static String activityDetail(String courseCode) {
    return '$activity/$courseCode';
  }

  static String assignmentDetail(String activityCode) {
    return '$activity/$activityCode';
  }

  static String noticeDetail(String courseCode) {
    return '$notice/$courseCode';
  }
}
