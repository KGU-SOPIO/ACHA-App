import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'package:acha/models/index.dart';

import 'package:acha/constants/apis/index.dart';

class PriorityLectureRepository {
  final Dio _dio = GetIt.I<Dio>();
  
  Future<PriorityLectures> fetchLectures() async {
    try {
      final response = await _dio.get(PriorityLectureApiEndpoints.priorityLecture);
      return PriorityLectures.fromJson(response.data);
    } on DioException {
      rethrow;
    } catch (e) {
      throw Exception('우선강의 정보를 불러오지 못했어요');
    }
  }
}