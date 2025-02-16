import 'package:flutter/cupertino.dart';

import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'package:acha/domain/repositories/index.dart';

class SecureStorageRepositoryImpl implements SecureStorageRepository {
  SecureStorageRepositoryImpl({required this.secureStorage});

  final FlutterSecureStorage secureStorage;

  static const String accessTokenKey = 'accessToken';
  static const String refreshTokenKey = 'refreshToken';

  /// 저장된 RefreshToken을 반환합니다.
  @override
  Future<String> readRefreshToken() async {
    final token = await secureStorage.read(key: refreshTokenKey);
    if (token == null) {
      throw Exception('RefreshToken을 불러오지 못했어요');
    }
    return token;
  }

  /// 토큰을 저장합니다.
  @override
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
      rethrow;
    }
  }

  /// 저장된 모든 데이터를 삭제합니다.
  @override
  Future<void> deleteAllData() async {
    try {
      await secureStorage.deleteAll();
    } catch (e) {
      rethrow;
    }
  }

  /// 유효한 AccessToken을 반환합니다.
  @override
  Future<String?> getValidAccessToken() async {
    try {
      final token = await secureStorage.read(key: accessTokenKey);
      if (token == null || JwtDecoder.isExpired(token)) return null;
      return token;
    } catch (e) {
      rethrow;
    }
  }

  /// 유효한 RefreshToken을 반환합니다.
  @override
  Future<String?> getValidRefreshToken() async {
    try {
      final token = await secureStorage.read(key: refreshTokenKey);
      if (token == null || JwtDecoder.isExpired(token)) return null;
      return token;
    } catch (e) {
      rethrow;
    }
  }

  /// RefreshToken의 상태를 반환합니다.
  @override
  Future<TokenStatus> getRefreshTokenStatus() async {
    try {
      final token = await secureStorage.read(key: refreshTokenKey);
      if (token == null) return TokenStatus.notExist;
      return JwtDecoder.isExpired(token)
          ? TokenStatus.expired
          : TokenStatus.valid;
    } catch (e) {
      rethrow;
    }
  }
}
