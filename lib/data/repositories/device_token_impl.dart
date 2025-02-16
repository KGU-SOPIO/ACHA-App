import 'dart:io';

import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

import 'package:acha/domain/apis/index.dart';
import 'package:acha/domain/repositories/index.dart';

class DeviceTokenRepositoryImpl implements DeviceTokenRepository {
  DeviceTokenRepositoryImpl({required this.dio});

  final Dio dio;

  /// 기기 고유 토큰을 가져옵니다.
  static Future<String?> _getDeviceToken() async {
    return Platform.isIOS
        ? FirebaseMessaging.instance.getAPNSToken()
        : FirebaseMessaging.instance.getToken();
  }

  /// FCM 토큰 업데이트를 요청합니다.
  @override
  Future<void> updateDeviceToken(String? token) async {
    if (token == null) return;

    try {
      await dio.post(
        FCMTokenApiEndpoints.fcmToken,
        data: {
          'deviceToken': token,
        },
      );
    } catch (e) {
      try {
        final token = await _getDeviceToken();
        await dio.post(
          FCMTokenApiEndpoints.fcmToken,
          data: {
            'deviceToken': token,
          },
        );
      } catch (e) {
        return;
      }
    }
  }
}
