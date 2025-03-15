import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';

import 'package:acha/data/models/index.dart';
import 'package:acha/domain/apis/index.dart';
import 'package:acha/domain/repositories/index.dart';

class CourseRepositoryImpl implements CourseRepository {
  CourseRepositoryImpl({required this.dio});

  final Dio dio;

  /// 오늘의 강좌 데이터를 요청합니다.
  @override
  Future<Either<String, CourseList>> fetchTodayCourses() async {
    try {
      final weekday = DateTime.now().weekday;
      if (weekday == DateTime.saturday || weekday == DateTime.sunday) {
        return const Left('오늘은 주말이에요');
      }

      final response = await dio.get(TodayCourseApiEndpoints.todayCourse);

      final parsedData = CourseListModel.fromJson(response.data);
      return parsedData.map(
        (courseList) => Right(courseList),
        error: (value) => Left(value.code.message),
      );
    } on DioException catch (e) {
      return Left(e.error as String);
    } catch (e) {
      return const Left('오늘의 강의 정보를 불러오지 못했어요');
    }
  }

  /// 강좌 목록 데이터를 요청합니다.
  @override
  Future<Either<String, CourseList>> fetchCourseList() async {
    try {
      final response = await dio.get(CourseApiEndpoints.courses);

      final parsedData = CourseListModel.fromJson(response.data);
      return parsedData.map(
        (courseList) => Right(courseList),
        error: (value) => Left(value.code.message),
      );
    } on DioException catch (e) {
      return Left(e.error as String);
    } catch (e) {
      return const Left('강좌를 불러오지 못했어요');
    }
  }

  /// 모든 강좌의 활동 데이터를 요청합니다.
  @override
  Future<Either<String, ActivityList>> fetchActivities() async {
    try {
      final response = await dio.get(CourseApiEndpoints.activity);

      final parsedData = ActivityListModel.fromJson(response.data);
      return parsedData.map(
        (activityList) => Right(activityList),
        error: (value) => Left(value.code.message),
      );
    } on DioException catch (e) {
      return Left(e.error as String);
    } catch (e) {
      return const Left('활동을 불러오지 못했어요');
    }
  }

  /// 강좌 활동 데이터를 요청합니다.
  @override
  Future<Either<String, CourseActivityList>> fetchCourseActivities(
    String code,
  ) async {
    try {
      final response = await dio.get(
        CourseApiEndpoints.activityDetail(code),
      );

      final parsedData = CourseActivityListModel.fromJson(response.data);
      return parsedData.map(
        (courseActivityList) => Right(courseActivityList),
        error: (value) => Left(value.code.message),
      );
    } on DioException catch (e) {
      return Left(e.error as String);
    } catch (e) {
      return const Left('활동을 불러오지 못했어요');
    }
  }

  /// 공지사항 목록 데이터를 요청합니다.
  @override
  Future<Either<String, NoticeList>> fetchNoticeList(String code) async {
    try {
      final response = await dio.get(
        NoticeApiEndpoints.noticeListDetail(code),
      );

      final parsedData = NoticeListModel.fromJson(response.data);
      return parsedData.map(
        (noticeList) => Right(noticeList),
        error: (value) => Left(value.code.message),
      );
    } on DioException catch (e) {
      return Left(e.error as String);
    } catch (e) {
      return const Left('공지사항 목록을 불러오지 못했어요');
    }
  }

  /// 공지사항 데이터를 요청합니다.
  @override
  Future<Either<String, Notice>> fetchNotice(int noticeId) async {
    try {
      final response = await dio.get(
        NoticeApiEndpoints.noticeDetail(noticeId),
      );

      final parsedData = NoticeModel.fromJson(response.data);
      return parsedData.map(
        (notice) => Right(notice),
        error: (value) => Left(value.code.message),
      );
    } on DioException catch (e) {
      return Left(e.error as String);
    } catch (e) {
      return const Left('공지사항을 불러오지 못했어요');
    }
  }
}
