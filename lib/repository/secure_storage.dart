import 'package:flutter/cupertino.dart';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

enum TokenStatus { valid, expired, notExist }

class SecureStorage {
  final FlutterSecureStorage _storage = const FlutterSecureStorage();
  static const String accessTokenKey = 'accessToken';
  static const String refreshTokenKey = 'refreshToken';

  /// RefreshToken을 반환합니다.
  /// 
  /// RefreshToken이 없다면 Exception을 던집니다.
  Future<String> readRefreshToken() async {
    final refreshToken = await _storage.read(key: refreshTokenKey);
    return refreshToken ?? (throw Exception('RefreshToken을 불러오지 못했습니다.'));
  }

  /// 전달받은 토큰들을 저장합니다.
  ///
  /// extract가 true라면 사용자 정보를 토큰에서 추출하여 같이 저장합니다.
  ///
  /// 토큰을 저장하지 못했다면 Exception을 던집니다.
  Future<void> saveTokens({String? accessToken, String? refreshToken, bool? extract}) async {
    if (accessToken == null && refreshToken == null) {
      throw FlutterError('토큰이 존재하지 않습니다.');
    }

    try {
      List<Future> futures = [];

      if (accessToken != null) {
        futures.add(_storage.write(key: accessTokenKey, value: accessToken));
      }
      if (refreshToken != null) {
        futures.add(_storage.write(key: refreshTokenKey, value: refreshToken));
      }
      await Future.wait(futures);
    } catch (e) {
      debugPrint('SecureStorage.saveTokens(): 토큰들을 저장하지 못했습니다. Error: $e');
      throw Exception('토큰을 저장하지 못했습니다.');
    }
  }

  /// 모든 데이터를 삭제합니다.
  ///
  /// 데이터를 삭제하지 못했다면 Exception을 던집니다.
  Future<void> deleteAllData() async {
    try {
      await _storage.deleteAll();
    } catch (e) {
      debugPrint('SecureStorage.deleteAllData(): 데이터를 삭제하지 못했습니다.\nError: $e');
      throw Exception('데이터를 삭제하지 못했습니다.');
    }
  }

  /// AccessToken이 유효하다면 토큰을 반환합니다.
  ///
  /// 유효하다면 AccessToken을 반환하고, 만료되었다면 nulll을 반환합니다.
  Future<dynamic> isAccessTokenExpiredOrReturn() async {
    final accessToken = await _storage.read(key: accessTokenKey);
    if (accessToken == null || JwtDecoder.isExpired(accessToken) == true) {
      return null;
    } else {
      return accessToken;
    }
  }

  /// RefreshToken이 유효하다면 토큰을 반환합니다.
  ///
  /// 유효하다면 RefreshToken을 반환하고, 만료되었다면 null을 반환합니다.
  Future<dynamic> isRefreshTokenExpiredOrReturn() async {
    final refreshToken = await _storage.read(key: refreshTokenKey);
    if (refreshToken == null || JwtDecoder.isExpired(refreshToken) == true) {
      return null;
    } else {
      return refreshToken;
    }
  }

  /// RefreshToken의 상태를 반환합니다.
  ///
  /// 존재하지 않는 경우 notExist를 반환합니다.
  /// 만료되었을 경우 expired를 반환합니다.
  /// 유효하다면 valid를 반환합니다.
  Future<TokenStatus> getRefreshTokenStatus() async {
    final refreshToken = await _storage.read(key: refreshTokenKey);
    if (refreshToken == null) {
      return TokenStatus.notExist;
    } else if (JwtDecoder.isExpired(refreshToken) == true) {
      return TokenStatus.expired;
    } else {
      return TokenStatus.valid;
    }
  }
}