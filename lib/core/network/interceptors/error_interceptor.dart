import 'package:dio/dio.dart';

import 'package:acha/core/utils/index.dart';

class ErrorInterceptor extends Interceptor {
  ErrorInterceptor({required this.connectivityChecker});

  final ConnectivityChecker connectivityChecker;

  @override
  Future<void> onError(
      DioException err, ErrorInterceptorHandler handler) async {
    final message = await _getErrorMessage(err);
    handler.reject(
      DioException(
        requestOptions: err.requestOptions,
        error: message,
        type: err.type,
        response: err.response,
      ),
    );
  }

  Future<String> _getErrorMessage(DioException err) async {
    switch (err.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return '서버 연결에 문제가 있어요';
      case DioExceptionType.connectionError:
        return await _checkConnectivity();
      case DioExceptionType.badCertificate:
        return '인증이 만료되었어요\n로그인을 다시 진행해 주세요';
      case DioExceptionType.unknown:
        return '네트워크 오류가 발생했어요';
      case DioExceptionType.cancel:
        return err.error is String ? err.error as String : '요청을 처리하지 못했어요';
      case DioExceptionType.badResponse:
        return '서버에 문제가 발생했어요';
    }
  }

  Future<String> _checkConnectivity() async {
    final isConnected = await connectivityChecker.isConnected();
    return isConnected ? '서버 연결에 문제가 있어요' : '인터넷 연결을 확인해 주세요';
  }
}
