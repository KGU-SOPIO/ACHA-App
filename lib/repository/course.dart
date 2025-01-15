import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'package:acha/models/index.dart';
import 'package:acha/repository/index.dart';

import 'package:acha/constants/apis/index.dart';

class CourseRepository {
  final Dio _dio = GetIt.I<Dio>();
  final DataStorage _dataStorage = GetIt.I<DataStorage>();

  Future<Courses> fetchCourses() async {
    try {
      final response = await _dio.get(CourseApiEndpoints.courses);
      return Courses.fromJson(response.data);
    } on DioException {
      rethrow;
    } catch (e) {
      throw Exception('강좌를 불러오지 못했어요');
    }
  }

  Future<WeekActivities> fetchActivities() async {
    try {
      final response = await _dio.get(CourseApiEndpoints.activity);
      return WeekActivities.fromJson(response.data);
    } on DioException {
      rethrow;
    } catch (e) {
      throw Exception('활동을 불러오지 못했어요');
    }
  }

  Future<CourseActivities> fetchCourseActivities(String courseCode) async {
    try {
      final response = await _dio.get(CourseApiEndpoints.activityDetail(courseCode));
      return CourseActivities.fromJson(response.data);
    } on DioException {
      rethrow;
    } catch (e) {
      throw Exception('활동을 불러오지 못했어요');
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