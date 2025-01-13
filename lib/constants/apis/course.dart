class CourseApiEndpoints {
  static const String baseUrl = 'http://127.0.0.1:8000';
  static const String courses = '$baseUrl/courses';
  static const String activity = '$baseUrl/activity';
  static const String assignment = '$baseUrl/assignment';
  static const String notice = '$baseUrl/notification';

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