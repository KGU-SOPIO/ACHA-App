import 'package:acha/data/models/index.dart';
import 'package:acha/domain/repositories/index.dart';

class FetchTodayCoursesUseCase {
  FetchTodayCoursesUseCase({required this.courseRepository});

  final CourseRepository courseRepository;

  Future<CourseList?> call() async {
    return await courseRepository.fetchTodayCourses();
  }
}

class FetchCourseListUseCase {
  FetchCourseListUseCase({required this.courseRepository});

  final CourseRepository courseRepository;

  Future<CourseList?> call() async {
    return await courseRepository.fetchCourseList();
  }
}

class FetchActivitiesUseCase {
  FetchActivitiesUseCase({required this.courseRepository});

  final CourseRepository courseRepository;

  Future<WeekActivities?> call() async {
    return await courseRepository.fetchActivities();
  }
}

class FetchCourseActivitiesUseCase {
  FetchCourseActivitiesUseCase({required this.courseRepository});

  final CourseRepository courseRepository;

  Future<CourseActivities?> call(String courseCode) async {
    return await courseRepository.fetchCourseActivities(courseCode);
  }
}

class FetchNoticeListUseCase {
  FetchNoticeListUseCase({required this.courseRepository});

  final CourseRepository courseRepository;

  Future<NoticeList?> call(String courseCode) async {
    return await courseRepository.fetchNoticeList(courseCode);
  }
}

class FetchNoticeUseCase {
  FetchNoticeUseCase({required this.courseRepository});

  final CourseRepository courseRepository;

  Future<Notice?> call(String courseCode, int noticeId) async {
    return await courseRepository.fetchNotice(courseCode, noticeId);
  }
}
