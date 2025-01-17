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
  /// RefreshToken이 존재하지 않다면 Exception을 던집니다.
  Future<String> readRefreshToken() async {
    final refreshToken = await _storage.read(key: refreshTokenKey);
    return refreshToken ?? (throw Exception('RefreshToken을 불러오지 못했습니다.'));
  }

  /// 토큰을 저장합니다.
  ///
  /// 저장에 실패했다면 Exception을 던집니다.
  Future<void> saveTokens({String? accessToken, String? refreshToken}) async {
    if (accessToken == null && refreshToken == null) {
      throw FlutterError('저장할 토큰이 없습니다.');
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
      throw Exception('토큰을 저장하지 못했습니다.');
    }
  }

  /// 저장된 모든 데이터를 삭제합니다.
  ///
  /// 데이터를 삭제하지 못했다면 Exception을 던집니다.
  Future<void> deleteAllData() async {
    try {
      await _storage.deleteAll();
    } catch (e) {
      throw Exception('데이터를 삭제하지 못했습니다.');
    }
  }

  /// AccessToken이 유효하다면 토큰을 반환합니다.
  ///
  /// 유효하다면 AccessToken을 반환하고, 만료되었다면 null을 반환합니다.
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