import 'package:flutter/cupertino.dart';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

enum TokenStatus { valid, expired, notExist }

class SecureStorage {
  SecureStorage(this.secureStorage);

  final FlutterSecureStorage secureStorage;
  
  static const String accessTokenKey = 'accessToken';
  static const String refreshTokenKey = 'refreshToken';

  /// RefreshToken을 반환합니다.
  Future<String> readRefreshToken() async {
    final token = await secureStorage.read(key: refreshTokenKey);
    if (token == null) {
      throw Exception('RefreshToken을 불러오지 못했습니다.');
    }
    return token;
  }

  /// 토큰을 저장합니다.
  Future<void> saveTokens({String? accessToken, String? refreshToken}) async {
    if (accessToken == null && refreshToken == null) {
      throw FlutterError('저장할 토큰이 없습니다.');
    }

    try {
      await Future.wait([
        if (accessToken != null)
          secureStorage.write(key: accessTokenKey, value: accessToken),
        if (refreshToken != null)
          secureStorage.write(key: refreshTokenKey, value: refreshToken)
      ]);
    } catch (e) {
      throw Exception('토큰을 저장하지 못했습니다.');
    }
  }

  /// 저장된 모든 데이터를 삭제합니다.
  Future<void> deleteAllData() async {
    try {
      await secureStorage.deleteAll();
    } catch (e) {
      throw Exception('데이터를 삭제하지 못했습니다.');
    }
  }

  /// AccessToken이 유효하다면 토큰을 반환합니다.
  Future<String?> isAccessTokenExpiredOrReturn() async {
    final token = await secureStorage.read(key: accessTokenKey);
    if (token == null || JwtDecoder.isExpired(token)) return null;
    return token;
  }

  /// RefreshToken이 유효하다면 토큰을 반환합니다.
  Future<String?> isRefreshTokenExpiredOrReturn() async {
    final token = await secureStorage.read(key: refreshTokenKey);
    if (token == null || JwtDecoder.isExpired(token)) return null;
    return token;
  }

  /// RefreshToken의 상태를 반환합니다.
  Future<TokenStatus> getRefreshTokenStatus() async {
    final token = await secureStorage.read(key: refreshTokenKey);
    if (token == null) return TokenStatus.notExist;
    return JwtDecoder.isExpired(token) ? TokenStatus.expired : TokenStatus.valid;
  }
}