import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'package:acha/domain/apis/index.dart';
import 'package:acha/data/models/index.dart';
import 'package:acha/domain/exceptions/index.dart';

class CourseRepository {
  final Dio _dio = GetIt.I<Dio>();

  /// 오늘의 강좌 데이터를 요청합니다.
  Future<CourseList?> fetchTodayCourses() async {
    try {
      final response = await _dio.get(TodayCourseApiEndpoints.todayCourse);
      if (response.statusCode == 404) return null;
      return CourseList.fromJson(response.data);
    } on DioException {
      rethrow;
    } catch (e) {
      throw RepositoryException('오늘의 강의 정보를 불러오지 못했어요');
    }
  }

  /// 강좌 목록 데이터를 요청합니다.
  Future<CourseList?> fetchCourseList() async {
    try {
      final response = await _dio.get(CourseApiEndpoints.courses);
      if (response.statusCode == 404) return null;
      return CourseList.fromJson(response.data);
    } on DioException {
      rethrow;
    } catch (e) {
      throw RepositoryException('강좌를 불러오지 못했어요');
    }
  }

  /// 모든 강좌의 활동 데이터를 요청합니다.
  Future<WeekActivities?> fetchActivities() async {
    try {
      final response = await _dio.get(CourseApiEndpoints.activity);
      if (response.statusCode == 404) return null;
      return WeekActivities.fromJson(response.data);
    } on DioException {
      rethrow;
    } catch (e) {
      throw RepositoryException('활동을 불러오지 못했어요');
    }
  }

  /// 강좌 활동 데이터를 요청합니다.
  Future<CourseActivities?> fetchCourseActivities(String courseCode) async {
    try {
      final response =
          await _dio.get(CourseApiEndpoints.activityDetail(courseCode));
      if (response.statusCode == 404) return null;
      return CourseActivities.fromJson(response.data);
    } on DioException {
      rethrow;
    } catch (e) {
      throw RepositoryException('활동을 불러오지 못했어요');
    }
  }

  /// 공지사항 목록 데이터를 요청합니다.
  Future<NoticeList?> fetchNoticeList(String courseCode) async {
    try {
      final response =
          await _dio.get(NoticeApiEndpoints.noticeListDetail(courseCode));
      if (response.statusCode == 404) return null;
      return NoticeList.fromJson(response.data);
    } on DioException {
      rethrow;
    } catch (e) {
      throw Exception('공지사항 목록을 불러오지 못했어요');
    }
  }

  /// 공지사항 데이터를 요청합니다.
  Future<Notice?> fetchNotice(String courseCode, int noticeId) async {
    try {
      final response =
          await _dio.get(NoticeApiEndpoints.noticeDetail(courseCode, noticeId));
      if (response.statusCode == 404) return null;
      return Notice.fromJson(response.data);
    } on DioException {
      rethrow;
    } catch (e) {
      throw Exception('공지사항을 불러오지 못했어요');
    }
  }
}
