import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'package:acha/repository/index.dart';

import 'package:acha/constants/apis/authentication.dart';

class TokenInterceptor extends Interceptor {
  final Dio _dio = Dio();
  final SecureStorage _secureStorage = GetIt.I<SecureStorage>();

  /// 요청 시 AccessToken을 검증하고, 만료 시 재발급합니다.
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    try {
      String? accessToken = await _secureStorage.isAccessTokenExpiredOrReturn();
      if (accessToken == null) {
        String? refreshToken = await _secureStorage.isRefreshTokenExpiredOrReturn();
        if (refreshToken == null) {
          return _rejectRequest(handler: handler, options: options, message: "인증 상태가 만료되었어요\n로그인을 다시 진행해 주세요");
        }

        try {
          await _refreshAccessTokens(refreshToken: refreshToken);
          accessToken = await _secureStorage.isAccessTokenExpiredOrReturn();
        } catch (e) {
          return handler.reject(e as DioException);
        }
      }

      options.headers['Authorization'] = accessToken;

      return super.onRequest(options, handler);
    } catch (e) {
      rethrow;
    }
  }

  /// AccessToken을 재발급합니다.
  Future<void> _refreshAccessTokens({required String refreshToken}) async {
    final response = await _dio.post(
      AuthenticationApiEndpoints.refresh,
      data: {"refreshToken": refreshToken},
      options: Options(headers: {"Content-Type": "application/json"})
    );

    final newAccessToken = response.data.get("accessToken");
    final newRefreshToken = response.data.get("refreshToken");

    if (newAccessToken == null && newRefreshToken == null) {
      throw DioException(
        requestOptions: RequestOptions(path: AuthenticationApiEndpoints.refresh),
        error: "서비스 이용을 위한 인증에 실패했어요",
        type: DioExceptionType.badResponse
      );
    }

    await _secureStorage.saveTokens(accessToken: newAccessToken, refreshToken: newRefreshToken);
  }

  /// 요청을 거부하고 DioException을 반환합니다.
  void _rejectRequest({required RequestInterceptorHandler handler, required RequestOptions options, required String message}) {
    handler.reject(
      DioException(
        requestOptions: options,
        error: message,
        type: DioExceptionType.cancel
      )
    );
  }
}