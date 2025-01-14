import 'package:acha/constants/apis/index.dart';

class CourseApiEndpoints {
  static const String courses = '${BaseApiEndpoints.baseUrl}/courses';
  static const String activity = '${BaseApiEndpoints.baseUrl}/activity';
  static const String assignment = '${BaseApiEndpoints.baseUrl}/assignment';
  static const String notice = '${BaseApiEndpoints.baseUrl}/notification';

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