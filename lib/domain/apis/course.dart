import 'package:acha/domain/apis/index.dart';

class CourseApiEndpoints {
  static const String extraction =
      '${BaseApiEndpoints.baseUri}/courses/extract';
  static const String courses = '${BaseApiEndpoints.baseUri}/member-courses';
  static const String todayCourse =
      '${BaseApiEndpoints.baseUri}/member-courses/today';
  static const String activity = '${BaseApiEndpoints.baseUri}/activities/my';
  static const String courseActivity =
      '${BaseApiEndpoints.baseUri}/activities/course';

  static String activityDetail(String courseCode) {
    return '$courseActivity?code=$courseCode';
  }
}
