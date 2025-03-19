import 'package:acha/domain/apis/index.dart';

class CourseApiEndpoints {
  static const String courseExtraction = '${BaseApiEndpoints.baseUri}/courses';
  static const String activityExtraction =
      '${BaseApiEndpoints.baseUri}/activities';
  static const String courses = '${BaseApiEndpoints.baseUri}/member-courses';
  static const String activity = '${BaseApiEndpoints.baseUri}/activities/my';
  static const String courseActivity =
      '${BaseApiEndpoints.baseUri}/activities/lecture';

  static String activityDetail(String courseCode) {
    return '$courseActivity?code=$courseCode';
  }
}
