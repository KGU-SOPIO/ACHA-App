import 'package:acha/data/models/index.dart';

abstract class CourseRepository {
  Future<CourseList?> fetchTodayCourses();
  Future<CourseList?> fetchCourseList();
  Future<WeekActivities?> fetchActivities();
  Future<CourseActivities?> fetchCourseActivities(String courseCode);
  Future<NoticeList?> fetchNoticeList(String courseCode);
  Future<Notice?> fetchNotice(String courseCode, int noticeId);
}
