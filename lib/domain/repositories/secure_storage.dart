enum TokenStatus { valid, expired, notExist }

abstract class SecureStorageRepository {
  Future<String> readRefreshToken();
  Future<void> saveTokens({String? accessToken, String? refreshToken});
  Future<void> deleteAllData();
  Future<String?> getValidAccessToken();
  Future<String?> getValidRefreshToken();
  Future<TokenStatus> getRefreshTokenStatus();
}
