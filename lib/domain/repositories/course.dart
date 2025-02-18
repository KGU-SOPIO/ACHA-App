import 'package:dartz/dartz.dart';

import 'package:acha/data/models/index.dart';

abstract class CourseRepository {
  Future<Either<String, CourseList>> fetchTodayCourses();
  Future<Either<String, CourseList>> fetchCourseList();
  Future<Either<String, ActivityList>> fetchActivities();
  Future<Either<String, CourseActivityList>> fetchCourseActivities(int id);
  Future<Either<String, NoticeList>> fetchNoticeList(int id);
  Future<Either<String, Notice>> fetchNotice(int courseId, int noticeId);
}
