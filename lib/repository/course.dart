import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'package:acha/models/index.dart';
import 'package:acha/repository/index.dart';

import 'package:acha/constants/apis/course.dart';

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
    } catch (e) {
      rethrow;
    }
  }

  Future<List<List<Activity>>> fetchActivities(String courseCode) async {
    try {
      final response = await _dio.get(CourseApiEndpoints.activityDetail(courseCode));
      final List<dynamic> data = response.data;

      final List<List<Activity>> activities = data.map((week) {
        final List<dynamic> weekData = week;
        return weekData.map((json) => Activity.fromJson(json)).toList();
      }).toList();
      await _dataStorage.updateActivities(courseCode, activities);

      return activities;
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