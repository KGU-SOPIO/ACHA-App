import 'dart:io';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

import 'package:acha/constants/apis/index.dart';

class FCMTokenRepository {
  final Dio _dio = GetIt.I<Dio>();

  /// 기기 고유 토큰을 가져옵니다.
  static Future<String?> _getDeviceToken() async {
    return Platform.isIOS
      ? FirebaseMessaging.instance.getAPNSToken()
      : FirebaseMessaging.instance.getToken();
  }

  /// FCM 토큰 업데이트를 요청합니다.
  Future<void> updateToken(String? newToken) async {
    if (newToken == null) return;

    try {
      await _dio.post(
        FCMTokenApiEndpoints.fcmToken,
        data: {'deviceToken': newToken}
      );
    } catch (e) {
      try {
        final token = await _getDeviceToken();
        await _dio.post(
          FCMTokenApiEndpoints.fcmToken,
          data: {'deviceToken': token}
        );
      } catch (e) {
        return;
      }
    }
  }
}