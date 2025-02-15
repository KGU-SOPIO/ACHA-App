import 'dart:async';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'package:acha/core/network/interceptors/index.dart';
import 'package:acha/data/models/index.dart';
import 'package:acha/domain/apis/index.dart';
import 'package:acha/domain/repositories/index.dart';
import 'package:acha/domain/repositories/exceptions/index.dart';
import 'package:acha/presentation/blocs/index.dart';
import 'package:acha/presentation/widgets/index.dart';

class AuthenticationRepository {
  AuthenticationRepository(
      {required this.dio,
      required this.tokenInterceptor,
      required this.secureStorage}) {
    _initAuthentication();
  }

  final Dio dio;
  final SecureStorage secureStorage;
  final TokenInterceptor tokenInterceptor;

  final StreamController<AuthenticationStatus> _authStreamController =
      StreamController<AuthenticationStatus>();

  /// 인증 상태를 초기화합니다.
  Future<void> _initAuthentication() async {
    try {
      // 서버 연결 상태 추가 확인 필요

      final refreshTokenStatus = await secureStorage.getRefreshTokenStatus();
      switch (refreshTokenStatus) {
        case TokenStatus.notExist:
          _authStreamController.add(AuthenticationStatus.unauthenticated);
          break;
        case TokenStatus.expired:
          _authStreamController.add(AuthenticationStatus.unauthenticated);
          await secureStorage.deleteAllData();
          GetIt.I<ToastManager>()
              .error(message: '인증 상태가 만료되었어요\n로그인을 다시 진행해 주세요');
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

  /// 인증 정보로 로그인을 요청합니다.
  Future<SignInResponse> signIn(
      {required String studentId, required String password}) async {
    try {
      final response = await dio.post(AuthenticationApiEndpoints.signIn,
          data: {'studentId': studentId, 'password': password});

      final signInResponse = SignInResponse.fromJson(response.data);
      signInResponse.maybeWhen(
          success: (accessToken, refreshToken) async {
            await secureStorage.saveTokens(
                accessToken: accessToken, refreshToken: refreshToken);
            _authStreamController.add(AuthenticationStatus.authenticated);
          },
          orElse: () => {});

      return signInResponse;
    } on DioException {
      rethrow;
    } catch (e) {
      _authStreamController.add(AuthenticationStatus.unauthenticated);
      throw RepositoryException('문제가 발생해 로그인에 실패했어요');
    }
  }

  /// 인증 정보로 사용자 정보를 요청합니다.
  Future<UserResponse> fetchUserData(
      {required String studentId, required String password}) async {
    try {
      final response = await dio.post(AuthenticationApiEndpoints.fetchUser,
          data: {'studentId': studentId, 'password': password});

      return UserResponse.fromJson(response.data);
    } on DioException {
      rethrow;
    } catch (e) {
      _authStreamController.add(AuthenticationStatus.unauthenticated);
      throw RepositoryException('문제가 발생해 학생 정보를 가져오지 못했어요');
    }
  }

  /// 인증 정보로 회원가입을 요청합니다.
  Future<SignUpResponse> signUp(
      {required String studentId,
      required String password,
      required User user}) async {
    try {
      final response = await dio.post(AuthenticationApiEndpoints.signUp, data: {
        'studentId': studentId,
        'password': password,
        'name': user.name,
        'college': user.college,
        'department': user.college,
        'major': user.major
      });

      final signUpResponse = SignUpResponse.fromJson(response.data);
      await secureStorage.saveTokens(
          accessToken: signUpResponse.accessToken,
          refreshToken: signUpResponse.refreshToken);
      return signUpResponse;
    } on DioException {
      rethrow;
    } catch (e) {
      _authStreamController.add(AuthenticationStatus.unauthenticated);
      throw RepositoryException('문제가 발생해 회원가입에 실패했어요');
    }
  }

  /// 데이터 추출을 요청합니다.
  Future<void> requestExtraction() async {
    try {
      dio.interceptors.add(tokenInterceptor);

      final response = await dio.post(CourseApiEndpoints.extraction);
      if (response.statusCode != 200) throw Exception();
      _authStreamController.add(AuthenticationStatus.registered);
    } on DioException {
      rethrow;
    } catch (e) {
      _authStreamController.add(AuthenticationStatus.unauthenticated);
      throw RepositoryException('문제가 발생해 데이터를 불러오지 못했어요');
    }
  }

  /// AccessToken 재발급을 요청합니다.
  Future<void> _refreshAccessToken() async {
    try {
      final refreshToken = await secureStorage.readRefreshToken();
      final response = await dio.post(AuthenticationApiEndpoints.refresh,
          data: {'refreshToken': refreshToken});

      final refreshResponse = TokenRefreshResponse.fromJson(response.data);
      await secureStorage.saveTokens(accessToken: refreshResponse.accessToken);
    } on DioException {
      rethrow;
    } catch (e) {
      throw RepositoryException('서비스 이용을 위한 인증에 실패했어요');
    }
  }

  /// 로그아웃을 수행합니다.
  Future<void> logout() async {
    try {
      await secureStorage.deleteAllData();
      _authStreamController.add(AuthenticationStatus.unauthenticated);
    } catch (e) {
      // 오류 처리 검토 필요
      return;
    }
  }
}
