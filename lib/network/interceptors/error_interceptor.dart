import 'package:dio/dio.dart';

import 'package:acha/network/utils/index.dart';

class ErrorInterceptor extends Interceptor {
  ErrorInterceptor(this.connectivityChecker);

  final ConnectivityChecker connectivityChecker;

  @override
  Future<void> onError(DioException err, ErrorInterceptorHandler handler) async {
    late String message;
    
    switch (err.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        message = '서버 연결에 문제가 있어요';
        break;
      case DioExceptionType.connectionError:
        message = await _checkConnectivity();
        return;
      case DioExceptionType.badCertificate:
        message = '인증이 만료되었어요\n로그인을 다시 진행해 주세요';
        break;
      case DioExceptionType.unknown:
        message = '네트워크 오류가 발생했어요';
        break;
      case DioExceptionType.cancel:
        message = err.error is String ? err.error as String : '요청을 처리하지 못했어요';
        break;
      case DioExceptionType.badResponse:
        message = '서버에 문제가 발생했어요';
        break;
    }

    handler.reject(
      DioException(
        requestOptions: err.requestOptions,
        error: message,
        type: err.type,
        response: err.response
      )
    );
  }

  Future<String> _checkConnectivity() async {
    final isConnected = await connectivityChecker.isConnected();
    return isConnected ? '서버 연결에 문제가 있어요' : '인터넷 연결을 확인해 주세요';
  }
}