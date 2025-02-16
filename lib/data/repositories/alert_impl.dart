import 'package:dio/dio.dart';

import 'package:acha/domain/apis/index.dart';
import 'package:acha/domain/exceptions/index.dart';
import 'package:acha/domain/repositories/index.dart';

class AlertRepositoryImpl implements AlertRepository {
  AlertRepositoryImpl({required this.dio});

  final Dio dio;

  /// 알림 설정 상태를 요청합니다.
  @override
  Future<bool> fetchAlertStatus() async {
    try {
      final response = await dio.get(AlertApiEndpoints.alert);
      return response.data['isEnabled'];
    } on DioException {
      rethrow;
    } catch (e) {
      throw RepositoryException('알림 상태를 불러오지 못했어요');
    }
  }

  /// 알림 상태 변경을 요청합니다.
  @override
  Future<void> updateAlertStatus({required bool isEnabled}) async {
    try {
      await dio.post(AlertApiEndpoints.alert, data: {'status': isEnabled});
    } on DioException {
      rethrow;
    } catch (e) {
      throw RepositoryException('알림 상태를 변경하지 못했어요');
    }
  }
}
