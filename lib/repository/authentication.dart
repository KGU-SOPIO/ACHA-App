import 'dart:async';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'package:acha/models/index.dart';
import 'package:acha/repository/index.dart';
import 'package:acha/blocs/auth/index.dart';

import 'package:acha/network/interceptor/index.dart';

import 'package:acha/constants/apis/index.dart';

import 'package:acha/widgets/toast/toast_manager.dart';

class AuthenticationRepository {
  final Dio _dio = Dio(BaseOptions(
    connectTimeout: const Duration(seconds: 3),
    receiveTimeout: const Duration(seconds: 15),
    sendTimeout: const Duration(seconds: 5)
  ));
  final SecureStorage _secureStorage = GetIt.I<SecureStorage>();
  final DataStorage _dataStorage = GetIt.I<DataStorage>();

  final StreamController<AuthenticationStatus> _authStreamController = StreamController<AuthenticationStatus>();

  AuthenticationRepository() {
    _dio.interceptors.add(ErrorInterceptor());
    _initAuthentication();
  }

  /// 인증 상태를 초기화합니다.
  Future<void> _initAuthentication() async {
    try {
      // 서버 연결 상태 추가 확인 필요

      final refreshTokenStatus = await _secureStorage.getRefreshTokenStatus();
      switch (refreshTokenStatus) {
        case TokenStatus.notExist:
          _authStreamController.add(AuthenticationStatus.unauthenticated);
          break;
        case TokenStatus.expired:
          _authStreamController.add(AuthenticationStatus.unauthenticated);
          await _secureStorage.deleteAllData();
          await _dataStorage.deleteAllData();
          GetIt.I<ToastManager>().error(message: '인증 상태가 만료되었어요\n로그인을 다시 진행해 주세요');
          break;
        case TokenStatus.valid:
          await _refreshAccessToken();
          _authStreamController.add(AuthenticationStatus.authenticated);
          break;
      }
    } on DioException catch (e) {
      _authStreamController.add(AuthenticationStatus.unauthenticated);
      GetIt.I<ToastManager>().error(message: e.error as String);
    } catch (e) {
      _authStreamController.add(AuthenticationStatus.unauthenticated);
      GetIt.I<ToastManager>().error(message: '사용자 인증 중 문제가 발생했어요');
    }
  }

  /// 인증 상태 Stream을 반환합니다.
  Stream<AuthenticationStatus> get authStream async* {
    yield* _authStreamController.stream;
  }

  /// 인증 상태 Stream을 종료합니다.
  void disposeAuthStream() => _authStreamController.close();

  /// 로그인을 수행합니다.
  Future<AuthenticationResponse> signIn({required String studentId, required String password}) async {
    try {
      final response = await _dio.post(
        AuthenticationApiEndpoints.signIn,
        data: {'studentId': studentId, 'password': password}
      );

      final signInResponse = AuthenticationResponse.fromJson(response.data);
      signInResponse.maybeWhen(
        success: (accessToken, refreshToken) async {
          await _secureStorage.saveTokens(accessToken: accessToken, refreshToken: refreshToken);
          _authStreamController.add(AuthenticationStatus.authenticated);
        },
        orElse: () => {}
      );

      return signInResponse;
    } on DioException {
      rethrow;
    } catch (e) {
      _authStreamController.add(AuthenticationStatus.unauthenticated);
      throw Exception('문제가 발생해 로그인에 실패했어요');
    }
  }

  /// 회원가입을 수행합니다.
  Future<AuthenticationResponse> signUp({required String studentId, required String name, required String college, required String department, required String? major}) async {
    try {
      final response = await _dio.post(
        AuthenticationApiEndpoints.signUp,
        data: {
          'studentid': studentId,
          'name': name,
          'college': college,
          'department': department,
          if (major != null)
            'major': major,
        }
      );
      
      final signUpResponse = AuthenticationResponse.fromJson(response.data);
      signUpResponse.maybeWhen(
        success: (accessToken, refreshToken) async {
          await _secureStorage.saveTokens(accessToken: accessToken, refreshToken: refreshToken);
          _authStreamController.add(AuthenticationStatus.registered);
        },
        orElse: () => {}
      );

      return signUpResponse;
    } on DioException {
      rethrow;
    } catch (e) {
      _authStreamController.add(AuthenticationStatus.unauthenticated);
      throw Exception('문제가 발생해 회원가입에 실패했어요');
    }
  }

  /// 로그아웃을 수행합니다.
  void logout() {
    _secureStorage.deleteAllData();
    _dataStorage.deleteAllData();
    _authStreamController.add(AuthenticationStatus.unauthenticated);
  }

  /// AccessToken을 재발급합니다.
  Future<void> _refreshAccessToken() async {
    try {
      final refreshToken = await _secureStorage.readRefreshToken();
      final response = await _dio.post(
        AuthenticationApiEndpoints.refresh,
        data: {'refreshToken': refreshToken}
      );

      final refreshResponse = AuthenticationResponse.fromJson(response.data);
      refreshResponse.maybeWhen(
        refresh: (accessToken) async => await _secureStorage.saveTokens(accessToken: accessToken),
        orElse: () => throw Exception('서비스 이용을 위한 인증에 실패했어요')
      );
    } on DioException {
      rethrow;
    } catch (e) {
      throw Exception('서비스 이용을 위한 인증에 실패했어요');
    }
  }
}