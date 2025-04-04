import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

import 'package:acha/domain/apis/index.dart';
import 'package:acha/domain/repositories/index.dart';

class DeviceTokenRepositoryImpl implements DeviceTokenRepository {
  DeviceTokenRepositoryImpl({required this.dio});

  final Dio dio;

  /// 기기 고유 토큰을 가져옵니다.
  static Future<String?> getDeviceToken() async {
    try {
      return FirebaseMessaging.instance.getToken();
    } catch (e) {
      return null;
    }
  }

  /// FCM 토큰 업데이트를 요청합니다.
  @override
  Future<void> updateDeviceToken(String? token) async {
    token ??= await getDeviceToken();
    if (token == null) return;

    try {
      await _postToken(token: token);
    } on DioException {
      token = await getDeviceToken();
      if (token != null) {
        await _postToken(token: token);
      }
    }
  }

  /// 서버에 토큰 등록 POST 요청을 보냅니다.
  Future<void> _postToken({required String token}) async {
    await dio.post(
      FCMTokenApiEndpoints.fcmToken,
      data: {
        'deviceToken': token,
      },
    );
  }
}
