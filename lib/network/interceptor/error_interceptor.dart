import 'package:dio/dio.dart';

class ErrorInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    String message;

    switch (err.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        message = '서버 연결에 문제가 있어요';
        break;
      case DioExceptionType.connectionError:
        message = '인터넷 연결을 확인해 주세요';
        break;
      case DioExceptionType.badCertificate:
        message = '인증이 만료되었어요\n로그인을 다시 진행해 주세요';
        break;
      case DioExceptionType.unknown:
        message = '네트워크 오류가 발생했어요';
        break;
      case DioExceptionType.cancel:
        if (err.error is String) {
          message = err.error as String;
        } else {
          message = '요청을 처리하지 못했어요';
        }
        break;
      case DioExceptionType.badResponse:
        if (err.response != null && err.response!.data != null) {
          try {
            dynamic data = err.response!.data;
            if (data.containsKey('message')) {
              message = data['message'];
            } else {
              message = '서버에 문제가 발생했어요';
            }
          } catch (e) {
            message = '서버에 문제가 발생했어요';
          }
        } else {
          message = '서버에 문제가 발생했어요';
        }
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
}