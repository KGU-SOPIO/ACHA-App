import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'package:acha/constants/apis/index.dart';

class AlertRepository {
  final Dio _dio = GetIt.I<Dio>();
  
  Future<bool> fetchSetting() async {
    try {
      final response = await _dio.get(AlertApiEndpoints.alert);
      return response.data['isEnabled'];
    } on DioException {
      rethrow;
    } catch (e) {
      throw Exception('알림 상태를 불러오지 못했어요');
    }
  }
  
  Future<void> updateSetting({required bool isEnabled}) async {
    try {
      await _dio.post(
        AlertApiEndpoints.alert,
        data: {'status': isEnabled}
      );
    } on DioException {
      rethrow;
    } catch (e) {
      throw Exception('알림 상태를 변경하지 못했어요');
    }
  }
}