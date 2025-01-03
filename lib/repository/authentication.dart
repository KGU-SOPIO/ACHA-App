import 'dart:async';

import 'package:acha/app.dart';

import 'package:flutter/material.dart';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'package:acha/blocs/signin/index.dart';

import 'package:acha/repository/storage.dart';
import 'package:acha/models/authentication/response.dart';
import 'package:acha/constants/apis/authentication.dart';

import 'package:acha/screens/auth/auth_start.dart';
import 'package:acha/widgets/toast/toast_manager.dart';

enum AuthenticationStatus { unknown, authenticated, unauthenticated }

class AuthenticationRepository {
  final Dio _dio = Dio();
  final SecureStorage _secureStorage = GetIt.I<SecureStorage>();
  final StreamController<AuthenticationStatus> _authController = StreamController<AuthenticationStatus>();
  late StreamController<SignInStatus> _signInController;
  late AuthenticationResponse signInResponse;

  AuthenticationRepository() {
    _initAuthentication();
  }

  /// 인증 상태를 초기화합니다.
  Future<void> _initAuthentication() async {
    try {
      final refreshTokenStatus = await _secureStorage.getRefreshTokenStatus();
      switch (refreshTokenStatus) {
        case TokenStatus.notExist:
          _authController.add(AuthenticationStatus.unauthenticated);
          break;
        case TokenStatus.expired:
          _authController.add(AuthenticationStatus.unauthenticated);
          _secureStorage.deleteAllData();
          GetIt.I<ToastManager>().error(message: "인증 상태가 만료되었어요\n로그인을 다시 진행해 주세요");
          break;
        case TokenStatus.valid:
          await _refreshAccessToken();
          _authController.add(AuthenticationStatus.authenticated);
          break;
      }
    } catch (e) {
      _authController.add(AuthenticationStatus.unauthenticated);
      GetIt.I<ToastManager>().error(message: "사용자 인증 중에 문제가 발생했어요");
      // ! 서버 상태 이상 Route 추가
    }
  }

  /// 인증 Stream을 반환합니다.
  Stream<AuthenticationStatus> get authStatus async* {
    yield* _authController.stream;
  }

  /// 로그인 Stream을 생성하고 반환합니다.
  Stream<SignInStatus> createSignInStatusStream() {
    _signInController = StreamController<SignInStatus>();
    return _signInController.stream;
  }

  /// 로그인을 수행합니다.
  Future<void> signIn({required String studentId, required String password}) async {
    try {
      final response = await _dio.post(
        AuthenticationApiEndpoints.signIn,
        data: {"studentId": studentId, "password": password}
      );

      if (response.statusCode == 200) {
        signInResponse = AuthenticationResponse.fromJson(response.data);
        signInResponse.when(
          success: (accessToken, refreshToken) async {
            await _secureStorage.saveTokens(accessToken: accessToken, refreshToken: refreshToken, extract: true);
            _signInController.add(SignInStatus.signInSuccess);
            _authController.add(AuthenticationStatus.authenticated);
          },
          signup: (name, college, department, major) {
            _signInController.add(SignInStatus.inSignUp);
          },
          refresh: (accessToken) => throw Exception("문제가 발생해 로그인에 실패했어요")
        );
      } else {
        throw Exception("문제가 발생해 로그인에 실패했어요");
      }
    } catch (e) {
      _authController.add(AuthenticationStatus.unauthenticated);
      throw Exception("문제가 발생해 로그인에 실패했어요");
    }
  }

  /// 회원가입을 수행합니다.
  Future<void> signUp({
    required String studentId,
    required String name,
    required String college,
    required String department,
    required String major
  }) async {
    try {
      final response = await _dio.post(
        AuthenticationApiEndpoints.signUp,
        data: {
          "studentid": studentId,
          "name": name,
          "college": college,
          "department": department,
          "major": major
        }
      );

      if (response.statusCode == 200) {
        final signUpResponse = AuthenticationResponse.fromJson(response.data);
        signUpResponse.when(
          success: (accessToken, refreshToken) async {
            await _secureStorage.saveTokens(accessToken: accessToken, refreshToken: refreshToken, extract: true);
            _signInController.add(SignInStatus.signUpSuccess);
            _authController.add(AuthenticationStatus.authenticated);
          },
          signup: (name, college, department, major) => throw Exception("문제가 발생해 회원가입에 실패했어요"),
          refresh: (accessToken) => throw Exception("문제가 발생해 회원가입에 실패했어요")
        );
      } else {
        throw Exception("문제가 발생해 회원가입에 실패했어요");
      }
    } catch (e) {
      _authController.add(AuthenticationStatus.unauthenticated);
      throw Exception("문제가 발생해 회원가입에 실패했어요");
    }
  }

  /// 로그아웃을 수행합니다.
  void logout() {
    _secureStorage.deleteAllData();
    _authController.add(AuthenticationStatus.unauthenticated);
    Navigator.pushAndRemoveUntil(
      AppView.navigatorKey.currentContext!,
      AuthStartScreen.route(),
      (route) => false
    );
  }

  /// AccessToken을 재발급합니다.
  Future<void> _refreshAccessToken() async {
    try {
      final refreshToken = await _secureStorage.readRefreshToken();
      final response = await _dio.post(
        AuthenticationApiEndpoints.refresh,
        data: {"refreshToken": refreshToken}
      );

      if (response.statusCode == 200) {
        final refreshResponse = AuthenticationResponse.fromJson(response.data);
        refreshResponse.when(
          refresh: (accessToken) async {
            await _secureStorage.saveTokens(accessToken: accessToken);
          },
          success: (accessToken, refreshToken) => throw Exception("서비스 이용을 위한 인증에 실패했어요"),
          signup: (name, college, department, major) => throw Exception("서비스 이용을 위한 인증에 실패했어요"),
        );
      }
    } catch (e) {
      debugPrint("AccessToken 재발급에 실패했습니다. Error: $e");
      throw Exception("서비스 이용을 위한 인증에 실패했어요");
    }
  }

  /// 사용자 정보 응답을 반환합니다.
  AuthenticationSignUpResponse get getUserData => signInResponse as AuthenticationSignUpResponse;

  /// Stream을 종료합니다.
  void disposeAuthStream() => _authController.close();
  void disposeSignInStream() => _signInController.close();
}