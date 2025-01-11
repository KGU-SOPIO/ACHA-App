import 'package:hive_flutter/hive_flutter.dart';

import 'package:acha/models/index.dart';

class HiveHelper {
  static const String courseBoxKey = 'courses';
  static const String weekActivitiesBoxKey = 'weekActivities';
  static const String activityBoxKey = 'activities';
  static const String noticeBoxKey = 'notices';
  static const String fileBoxKey = 'files';

  Future<void> init() async {
    await Hive.initFlutter();

    Hive.registerAdapter(CourseAdapter());
    Hive.registerAdapter(WeekActivitiesAdapter());
    Hive.registerAdapter(ActivityAdapter());
    Hive.registerAdapter(ActivityTypeAdapter());
    Hive.registerAdapter(NoticeAdapter());
    Hive.registerAdapter(FileAdapter());

    await Hive.openBox<Course>(courseBoxKey);
    await Hive.openBox<WeekActivities>(weekActivitiesBoxKey);
    await Hive.openBox<Activity>(activityBoxKey);
    await Hive.openBox<Notice>(noticeBoxKey);
    await Hive.openBox<File>(fileBoxKey);
  }

  List<T> getAll<T>(String boxName) {
    final box = Hive.box<T>(boxName);
    return box.values.toList();
  }

  Future<void> saveCourses(List<Course> courses) async {
    final box = Hive.box<Course>(courseBoxKey);
    await box.clear();
    for (Course course in courses) {
      await box.put(course.code, course);
    }
  }

  Future<List<Course>> readCourses() async {
    final box = Hive.box<Course>(courseBoxKey);
    return box.values.toList();
  }

  Future<void> updateCourse(Course course) async {
    final box = Hive.box<Course>(courseBoxKey);
    await box.put(course.code, course);
  }

  Future<void> saveActivities(String courseCode, List<List<Activity>> activities) async {
    final box = Hive.box<Course>(courseBoxKey);
    final course = box.get(courseCode);
    if (course != null) {
      final updatedActivities = activities.asMap().entries.map((entry) {
        final week = entry.key + 1;
        final activities = entry.value;
        return WeekActivities(
          week: week,
          activities: activities
        );
      }).toList();

      final updatedCourse = course.copyWith(
        weekActivities: updatedActivities,
      );
      await box.put(courseCode, updatedCourse);
    }
  }

  Future<List<List<Activity>>?> readActivities(String courseCode) async {
    final box = Hive.box<Course>(courseBoxKey);
    final course = box.get(courseCode);
    if (course?.weekActivities != null) {
      return course!.weekActivities!.map((weekActivities) => weekActivities.activities).toList();
    }
    return [];
  }

  Future<void> updateActivities(String courseCode, List<List<Activity>> activities) async {
    final box = Hive.box<Course>(courseBoxKey);
    final course = box.get(courseCode);
    if (course != null) {
      final updatedActivities = activities.asMap().entries.map((entry) {
        final week = entry.key + 1;
        final activities = entry.value;
        return WeekActivities(
          week: week,
          activities: activities
        );
      }).toList();

      final updatedCourse = course.copyWith(
        weekActivities: updatedActivities,
      );
      await box.put(courseCode, updatedCourse);
    } else {
      throw Exception('강좌를 찾을 수 없습니다.');
    }
  }

  Future<void> saveNotices(String courseCode, List<Notice> notices) async {
    final box = Hive.box<Course>(courseBoxKey);
    final course = box.get(courseCode);
    if (course != null) {
      final updatedCourse = course.copyWith(notices: notices);
      await box.put(courseCode, updatedCourse);
    }
  }

  Future<List<Notice>?> readNotices(String courseCode) async {
    final box = Hive.box<Course>(courseBoxKey);
    final course = box.get(courseCode);
    return course?.notices;
  }

  Future<void> updateNotices(String courseCode, List<Notice> notices) async {
    final box = Hive.box<Course>(courseBoxKey);
    final course = box.get(courseCode);
    if (course != null) {
      final updatedCourse = course.copyWith(notices: notices);
      await box.put(courseCode, updatedCourse);
    } else {
      throw Exception('강좌를 찾을 수 없습니다.');
    }
  }
}