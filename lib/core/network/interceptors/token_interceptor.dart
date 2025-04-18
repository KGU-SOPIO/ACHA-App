import 'package:dio/dio.dart';

import 'package:acha/domain/apis/index.dart';
import 'package:acha/domain/repositories/index.dart';

class TokenInterceptor extends Interceptor {
  TokenInterceptor({
    required this.dio,
    required this.secureStorageRepository,
  });

  final Dio dio;
  final SecureStorageRepository secureStorageRepository;

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    try {
      final accessToken = await _ensureAccessToken(options);
      options.headers['Authorization'] = 'Bearer $accessToken';
      handler.next(options);
    } on DioException catch (e) {
      handler.reject(e);
    } catch (e) {
      handler.reject(
        DioException(
          requestOptions: options,
          error: e,
          type: DioExceptionType.unknown,
        ),
      );
    }
  }

  /// AccessToken이 만료되었다면 RefreshToken을 통해 재발급을 시도합니다.
  Future<String> _ensureAccessToken(RequestOptions options) async {
    try {
      var accessToken = await secureStorageRepository.getValidAccessToken();
      if (accessToken != null) return accessToken;

      final refreshToken = await secureStorageRepository.getValidRefreshToken();
      if (refreshToken == null) {
        throw DioException(
          requestOptions: options,
          error: '인증이 만료되었어요\n로그인을 다시 진행해 주세요',
          type: DioExceptionType.cancel,
        );
      }

      await _reissueAccessTokens(refreshToken: refreshToken);

      accessToken = await secureStorageRepository.getValidAccessToken();
      if (accessToken == null) {
        throw DioException(
          requestOptions: options,
          error: '인증 정보를 불러오지 못했어요\n로그인을 다시 진행해 주세요',
          type: DioExceptionType.cancel,
        );
      }
      return accessToken;
    } on DioException {
      rethrow;
    } catch (e) {
      throw DioException(
        requestOptions: options,
        error: '인증 정보를 불러오지 못했어요\n로그인을 다시 진행해 주세요',
        type: DioExceptionType.cancel,
      );
    }
  }

  /// RefreshToken을 통해 AccessToken을 재발급합니다.
  Future<void> _reissueAccessTokens({required String refreshToken}) async {
    try {
      final response = await dio.post(
        AuthenticationApiEndpoints.reissue,
        data: {'refreshToken': refreshToken},
        options: Options(
          headers: {'Content-Type': 'application/json'},
        ),
      );

      final accessToken = response.data['accessToken'];
      if (accessToken == null) {
        throw DioException(
          requestOptions: RequestOptions(
            path: AuthenticationApiEndpoints.reissue,
          ),
          error: '서비스 이용을 위한 인증에 실패했어요',
          type: DioExceptionType.badResponse,
        );
      }
      await secureStorageRepository.saveTokens(accessToken: accessToken);
    } catch (e) {
      rethrow;
    }
  }
}
