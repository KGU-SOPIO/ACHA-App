import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'package:acha/models/index.dart';

import 'package:acha/constants/apis/index.dart';

class TodayCourseRepository {
  final Dio _dio = GetIt.I<Dio>();

  Future<Courses> fetchTodayCourses() async {
    try {
      final response = await _dio.get(TodayCourseApiEndpoints.todayCourse);
      return Courses.fromJson(response.data);
    } on DioException {
      rethrow;
    } catch (e) {
      throw Exception('오늘의 강의 정보를 불러오지 못했어요');
    }
  }
}