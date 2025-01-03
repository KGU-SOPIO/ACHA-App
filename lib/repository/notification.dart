import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'package:acha/constants/apis/notification.dart';

class NotificationRepository {
  final Dio _dio = GetIt.I<Dio>();
  
  Future<bool> fetchSetting() async {
    try {
      final response = await _dio.get(NotificationApiEndpoints.notification);
      return response.data['isEnabled'];
    } catch (e) {
      throw Exception("상태를 가져오지 못했습니다.");
    }
  }
  
  Future<void> updateSetting({required bool isEnabled}) async {
    try {
      await _dio.post(
        NotificationApiEndpoints.notification,
        data: {"status": isEnabled}
      );
    } catch (e) {
      throw Exception("상태를 변경하지 못했습니다.");
    }
  }
}