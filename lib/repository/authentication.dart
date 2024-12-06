import 'dart:async';

import 'package:acha/constants/apis/authentication.dart';
import 'package:flutter/material.dart';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'package:acha/blocs/signin/signin_bloc.dart';

import 'package:acha/repository/storage.dart';
import 'package:acha/models/authentication/response.dart';

enum AuthenticationStatus { unknown, authenticated, unauthenticated }

class AuthenticationRepository {
  AuthenticationRepository() {
    _initAuthentication();
  }

  final Dio _dio = Dio();
  final SecureStorage _secureStorage = GetIt.I<SecureStorage>();
  final _authController = StreamController<AuthenticationStatus>();
  late StreamController<SignInStatus> _signInController;
  late AuthenticationResponse signInResponse;

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
          // GetIt.I<ToastManager>().error(message: "인증 상태가 만료되었습니다.");
          break;
        case TokenStatus.valid:
          await refreshAccessToken();
          _authController.add(AuthenticationStatus.authenticated);
          break;
      }
    } catch (e) {
      _authController.add(AuthenticationStatus.unauthenticated);
      // GetIt.I<ToastManager>().error(message: "인증에 문제가 발생했습니다.");
    }
  }

  /// Authentication Stream
  Stream<AuthenticationStatus> get authStatus async* {
    yield* _authController.stream;
  }

  /// SignIn Stream
  Stream<SignInStatus> createSignInStatusStream() {
    _signInController = StreamController<SignInStatus>();
    return _signInController.stream;
  }

  /// SignIn
  Future<void> signIn({required String studentId, required String password}) async {
    try {
      final response = await _dio.post(
        AuthenticationApiEndpoints.signIn,
        data: {
          'studentId': studentId,
          'password': password
        }
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
          refresh: (accessToken) => throw FlutterError('잘못된 API 응답입니다.')
        );
      } else {
        throw Exception('아차에 문제가 발생해 로그인할 수 없어요.');
      }
    } catch (e) {
      _authController.add(AuthenticationStatus.unauthenticated);
      throw Exception('문제가 발생해 로그인에 실패했습니다.');
    }
  }

  /// SignUp
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
          'studentid': studentId,
          'name': name,
          'college': college,
          'department': department,
          'major': major
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
          signup: (name, college, department, major) => throw FlutterError('잘못된 API 응답입니다,'),
          refresh: (accessToken) => throw FlutterError('잘못된 API 응답입니다.')
        );
      } else {
        throw Exception('아차에 문제가 발생해 회원가입할 수 없어요.');
      }
    } catch (e) {
      _authController.add(AuthenticationStatus.unauthenticated);
      throw Exception('문제가 발생해 회원가입에 실패했습니다.');
    }
  }

  /// Logout
  void logout() {
  }

  Future<void> refreshAccessToken() async {
    try {
      final refreshToken = await _secureStorage.readRefreshToken();
      final response = await _dio.post(
        AuthenticationApiEndpoints.refresh,
        data: {
          'refreshToken': refreshToken
        }
      );

      if (response.statusCode == 200) {
        final refreshResponse = AuthenticationResponse.fromJson(response.data);
        refreshResponse.when(
          refresh: (accessToken) async {
            await _secureStorage.saveTokens(accessToken: accessToken);
          },
          success: (accessToken, refreshToken) => throw Exception('잘못된 API 응답입니다.'),
          signup: (name, college, department, major) => throw Exception('잘못된 API 응답입니다.'),
        );
      }
    } catch (e) {
      debugPrint("AccessToken 재발급에 실패했습니다. Error: $e");
      throw Exception('사용자 인증 중 문제가 발생했어요.');
    }
  }

  /// Get User Data
  AuthenticationSignUpResponse get getUserData => signInResponse as AuthenticationSignUpResponse;

  /// Dispose Stream
  void disposeAuthStream() => _authController.close();
  void disposeSignInStream() => _signInController.close();
}