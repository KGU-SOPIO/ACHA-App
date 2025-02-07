import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'package:acha/models/index.dart';

import 'package:acha/constants/apis/index.dart';

class CourseRepository {
  final Dio _dio = GetIt.I<Dio>();

  /// 오늘의 강좌 데이터를 요청합니다.
  Future<Courses?> fetchTodayCourses() async {
    try {
      final response = await _dio.get(TodayCourseApiEndpoints.todayCourse);
      if (response.statusCode == 404) return null;
      return Courses.fromJson(response.data);
    } on DioException {
      rethrow;
    } catch (e) {
      throw Exception('오늘의 강의 정보를 불러오지 못했어요');
    }
  }

  /// 강좌 목록 데이터를 요청합니다.
  Future<Courses?> fetchCourses() async {
    try {
      final response = await _dio.get(CourseApiEndpoints.courses);
      if (response.statusCode == 404) return null;
      return Courses.fromJson(response.data);
    } on DioException {
      rethrow;
    } catch (e) {
      throw Exception('강좌를 불러오지 못했어요');
    }
  }

  /// 전체 활동 데이터를 요청합니다.
  Future<WeekActivities?> fetchActivities() async {
    try {
      final response = await _dio.get(CourseApiEndpoints.activity);
      if (response.statusCode == 404) return null;
      return WeekActivities.fromJson(response.data);
    } on DioException {
      rethrow;
    } catch (e) {
      throw Exception('활동을 불러오지 못했어요');
    }
  }

  /// 강좌 활동 데이터를 요청합니다.
  Future<CourseActivities?> fetchCourseActivities(String courseCode) async {
    try {
      final response = await _dio.get(CourseApiEndpoints.activityDetail(courseCode));
      if (response.statusCode == 404) return null;
      return CourseActivities.fromJson(response.data);
    } on DioException {
      rethrow;
    } catch (e) {
      throw Exception('활동을 불러오지 못했어요');
    }
  }

  /// 공지사항 목록 데이터를 요청합니다.
  Future<Notices?> fetchNoticeList(String courseCode) async {
    try {
      final response = await _dio.get(NoticeApiEndpoints.noticeListDetail(courseCode));
      if (response.statusCode == 404) return null;
      return Notices.fromJson(response.data);
    } on DioException {
      rethrow;
    } catch (e) {
      throw Exception('공지를 불러오지 못했어요');
    }
  }

  /// 공지사항 데이터를 요청합니다.
  Future<Notice?> fetchNotice(String courseCode, int noticeId) async {
    try {
      final response = await _dio.get(NoticeApiEndpoints.noticeDetail(courseCode, noticeId));
      if (response.statusCode == 404) return null;
      return Notice.fromJson(response.data);
    } on DioException {
      rethrow;
    } catch (e) {
      throw Exception('공지를 불러오지 못했어요');
    }
  }
}