import 'dart:io';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

import 'package:acha/constants/apis/index.dart';

class TokenRepository {
  final Dio _dio = GetIt.I<Dio>();

  Future<String?> _getDeviceToken() async {
    return Platform.isIOS
      ? FirebaseMessaging.instance.getAPNSToken()
      : FirebaseMessaging.instance.getToken();
  }

  /// FCM 토큰 설정 및 업데이트를 요청합니다.
  Future<void> updateToken(String? newToken) async {
    if (newToken == null) return;

    try {
      await _dio.post(
        TokenApiEndpoints.token,
        data: {'deviceToken': newToken}
      );
    } catch (e) {
      try {
        final String? token = await _getDeviceToken();
        await _dio.post(
          TokenApiEndpoints.token,
          data: {'deviceToken': token}
        );
      } catch (e) {
        return;
      }
    }
  }
}