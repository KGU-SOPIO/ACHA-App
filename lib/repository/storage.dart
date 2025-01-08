import 'package:flutter/cupertino.dart';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

import 'package:acha/models/index.dart';

enum TokenStatus { valid, expired, notExist }

class SecureStorage {
  final FlutterSecureStorage _storage = const FlutterSecureStorage();
  final List<String> _userKeys = [
    'studentId', 'password', 'name', 'college', 'department', 'major'
  ];

  static const String accessTokenKey = 'accessToken';
  static const String refreshTokenKey = 'refreshToken';

  /// AccessToken을 반환합니다.
  ///
  /// AccessToken이 없다면 Exception을 던집니다.
  Future<String> readAccessToken() async {
    final accessToken = await _storage.read(key: accessTokenKey);
    return accessToken ?? (throw Exception('AccessToken을 불러오지 못했습니다.'));
  }

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
        if (extract == true) {
          futures.add(saveUser(accessToken));
        }
      }
      if (refreshToken != null) {
        futures.add(_storage.write(key: refreshTokenKey, value: refreshToken));
      }
      await Future.wait(futures);
    } catch (e) {
      debugPrint("SecureStorage.saveTokens(): 토큰들을 저장하지 못했습니다. Error: $e");
      throw Exception('토큰을 저장하지 못했습니다.');
    }
  }

  /// AccessToken을 삭제합니다.
  ///
  /// AccessToken을 삭제하지 못했다면 Exception을 던집니다.
  Future<void> deleteAccessToken() async {
    try {
      await _storage.delete(key: accessTokenKey);
    } catch (e) {
      debugPrint("SecureStorage.deleteAccessToken(): AccessToken을 삭제하지 못했습니다.\nError: $e");
      throw Exception('AccessToken을 삭제하지 못했습니다.');
    }
  }

  /// RefreshToken을 삭제합니다.
  ///
  /// RefreshToken을 삭제하지 못했다면 Exception을 던집니다.
  Future<void> deleteRefreshToken() async {
    try {
      await _storage.delete(key: refreshTokenKey);
    } catch (e) {
      debugPrint("SecureStorage.deleteRefreshToken(): RefreshToken을 삭제하지 못했습니다.\nError: $e");
      throw Exception('RefreshToken을 삭제하지 못했습니다.');
    }
  }

  /// AccessToken과 RefreshToken을 삭제합니다.
  ///
  /// 토큰을 삭제하지 못했다면 Exception을 던집니다.
  Future<void> deleteTokens() async {
    try {
      await _storage.delete(key: accessTokenKey);
      await _storage.delete(key: refreshTokenKey);
    } catch (e) {
      debugPrint("SecureStorage.deleteTokens(): 토큰들을 삭제하지 못했습니다.\nError: $e");
      throw Exception('토큰을 삭제하지 못했습니다');
    }
  }

  /// 모든 데이터를 삭제합니다.
  ///
  /// 데이터를 삭제하지 못했다면 Exception을 던집니다.
  Future<void> deleteAllData() async {
    try {
      await _storage.deleteAll();
    } catch (e) {
      debugPrint("SecureStorage.deleteAllData(): 데이터를 삭제하지 못했습니다.\nError: $e");
      throw Exception('데이터를 삭제하지 못했습니다.');
    }
  }

  /// 사용자 정보를 저장합니다.
  ///
  /// 사용자 정보를 저장하지 못했다면 Exception을 던집니다.
  Future<void> saveUser(String token) async {
    try {
      final payload = JwtDecoder.decode(token);

      List<Future> futures = _userKeys.map(
              (key) => _storage.write(key: key, value: payload[key])
      ).toList();
      await Future.wait(futures);
    } catch (e) {
      debugPrint("SecureStorage.saveUserFromToken(): 사용자를 저장하지 못했습니다.\nError: $e");
      throw Exception('사용자 정보를 저장하지 못했습니다.');
    }
  }

  /// 사용자 정보를 반환합니다.
  ///
  /// 사용자 정보를 불러오지 못했다면 Exception을 던집니다.
  Future<User> readUser() async {
    try {
      Map<String, String?> user = {};
      List<Future> futures = _userKeys.map(
        (key) => _storage.read(key: key).then(
          (value) => user[key] = value
        )
      ).toList();
      await Future.wait(futures);

      debugPrint(user.toString());

      return User(
        studentId: user['studentId']!,
        password: user['password']!,
        name: user['name']!,
        college: user['college']!,
        department: user['department']!,
        major: user['major']
      );
    } catch (e) {
      debugPrint("SecureStorage.readUser(): 사용자 정보를 불러오지 못했습니다.\nError: $e");
      throw Exception('사용자 정보를 불러오지 못했습니다.');
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