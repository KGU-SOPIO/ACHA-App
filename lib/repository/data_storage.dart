import 'package:hive_flutter/hive_flutter.dart';

import 'package:acha/models/index.dart';

class DataStorage {
  static const String courseBoxKey = 'courses';

  Future<void> init() async {
    await Hive.initFlutter();

    Hive.registerAdapter(CourseAdapter());
    Hive.registerAdapter(WeekActivitiesAdapter());
    Hive.registerAdapter(ActivityAdapter());
    Hive.registerAdapter(ActivityTypeAdapter());
    Hive.registerAdapter(NoticeAdapter());
    Hive.registerAdapter(FileAdapter());

    await Hive.openBox<Course>(courseBoxKey);
  }

  Future<void> saveCourses(Courses courses) async {
    final box = Hive.box<Course>(courseBoxKey);
    await box.clear();
    for (Course course in courses.courses!) {
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

  Future<void> deleteAllData() async {
    final box = Hive.box<Course>(courseBoxKey);
    await box.clear();
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

  Future<void> updateActivities(String courseCode, List<WeekActivities> weekActivities) async {
    final box = Hive.box<Course>(courseBoxKey);
    final course = box.get(courseCode);
    if (course != null) {
      final updatedCourse = course.copyWith(
        weekActivities: weekActivities
      );
      
      await box.put(courseCode, updatedCourse);
    } else {
      throw Exception('강좌를 찾을 수 없습니다.');
    }
  }

  Future<void> updateAssignment(String courseCode, String activityCode, Assignment assignment) async {
    final box = Hive.box<Course>(courseBoxKey);
    final course = box.get(courseCode);
    if (course == null) {
      throw Exception('강좌를 찾을 수 없습니다.');
    }

    final updatedWeekActivities = course.weekActivities!.map((weekActivities) {
      final updatedActivities = weekActivities.activities.map((activity) {
        if (activity.type == ActivityType.assignment && activity.code == activityCode) {
          return activity.copyWith(
            available: assignment.available,
            name: assignment.title,
            description: assignment.description,
            deadline: assignment.deadline,
            gradingStatus: assignment.gradingStatus,
            timeLeft: assignment.timeLeft,
            lastModified: assignment.lastModified,
          );
        }
        return activity;
      }).toList();

      return weekActivities.copyWith(activities: updatedActivities);
    }).toList();

    final updatedCourse = course.copyWith(weekActivities: updatedWeekActivities);
    await box.put(courseCode, updatedCourse);
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