import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'package:acha/models/index.dart';
import 'package:acha/repository/index.dart';

import 'package:acha/widgets/toast/toast_manager.dart';

import 'package:acha/constants/apis/index.dart';

class CourseRepository {
  final Dio _dio = GetIt.I<Dio>();
  final DataStorage _dataStorage = GetIt.I<DataStorage>();

  Future<List<Course>> fetchCourses() async {
    try {
      final response = await _dio.get(CourseApiEndpoints.courses);
      final List<dynamic> data = response.data;

      final List<Course> courses = data.map((json) => Course.fromJson(json)).toList();
      await _dataStorage.saveCourses(courses);

      return courses;
    } on DioException catch (e) {
      GetIt.I<ToastManager>().error(message: e.error as String);
      final storedCourses = await _dataStorage.readCourses();
      if (storedCourses.isNotEmpty) {
        return storedCourses;
      } else {
        throw Exception();
      }
    }
  }

  Future<List<WeekActivities>> fetchActivities(String courseCode) async {
    try {
      final response = await _dio.get(CourseApiEndpoints.activityDetail(courseCode));
      final List<dynamic> data = response.data;

      final List<WeekActivities> weekActivities = data.asMap().entries.map((entry) {
        final int week = entry.key + 1;
        final List<dynamic> activitiesData = entry.value as List<dynamic>;
        final List<Activity> activities = activitiesData.map((activityJson) => Activity.fromJson(activityJson as Map<String, dynamic>)).toList();

        return WeekActivities(
          week: week,
          activities: activities,
        );
      }).toList();
      await _dataStorage.updateActivities(courseCode, weekActivities);

      return weekActivities;
    } catch (e) {
      rethrow;
    }
  }

  Future<Assignment> fetchAssignment(String courseCode, String activityCode) async {
    try {
      final response = await _dio.get(CourseApiEndpoints.assignmentDetail(activityCode));
      final Map<String, dynamic> data = response.data;

      final Assignment assignment = Assignment.fromJson(data);
      await _dataStorage.updateAssignment(courseCode, activityCode, assignment);

      return assignment;
    } catch (e) {
      rethrow;
    }
  }

  Future<List<Notice>> fetchNotices(String courseCode) async {
    try {
      final response = await _dio.get(CourseApiEndpoints.noticeDetail(courseCode));
      final List<dynamic> data = response.data;

      final List<Notice> notices = data.map((json) => Notice.fromJson(json)).toList();
      await _dataStorage.updateNotices(courseCode, notices);

      return notices;
    } catch (e) {
      rethrow;
    }
  }
}