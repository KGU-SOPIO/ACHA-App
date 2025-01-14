import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'package:acha/models/index.dart';

import 'package:acha/constants/apis/index.dart';

class PriorityAssignmentRepository {
  final Dio _dio = GetIt.I<Dio>();

  Future<PriorityAssignments> fetchAssignments() async {
    try {
      final response = await _dio.get(PriorityAssignmentApiEndpoints.priorityAssignment);
      return PriorityAssignments.fromJson(response.data);
    } on DioException {
      rethrow;
    } catch (e) {
      throw Exception('우선과제 정보를 불러오지 못했어요');
    }
  }
}