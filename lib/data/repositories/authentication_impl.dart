import 'dart:async';

import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';

import 'package:acha/core/network/interceptors/index.dart';
import 'package:acha/data/models/index.dart';
import 'package:acha/data/converters/index.dart';
import 'package:acha/data/repositories/index.dart';
import 'package:acha/domain/apis/index.dart';
import 'package:acha/domain/repositories/index.dart';
import 'package:acha/presentation/blocs/index.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  AuthenticationRepositoryImpl({
    required this.dio,
    required this.tokenInterceptor,
    required this.secureStorageRepository,
  }) {
    _initAuthentication();
  }

  final Dio dio;
  final SecureStorageRepository secureStorageRepository;
  final TokenInterceptor tokenInterceptor;

  final StreamController<AuthenticationState> _authStreamController =
      StreamController<AuthenticationState>();

  /// 인증 상태 Stream을 반환합니다.
  @override
  Stream<AuthenticationState> get authStream async* {
    yield* _authStreamController.stream;
  }

  /// 인증 상태 Stream을 종료합니다.
  @override
  Future disposeAuthStream() => _authStreamController.close();

  /// 인증 상태를 초기화합니다.
  Future<void> _initAuthentication() async {
    try {
      final refreshTokenStatus =
          await secureStorageRepository.getRefreshTokenStatus();
      switch (refreshTokenStatus) {
        case TokenStatus.notExist:
          _authStreamController.add(
            const AuthenticationState.unauthenticated(),
          );
          break;
        case TokenStatus.expired:
          _authStreamController.add(
            const AuthenticationState.unauthenticated(isExpired: true),
          );
          await secureStorageRepository.deleteAllData();
          break;
        case TokenStatus.valid:
          await _reissueAccessToken();
          _authStreamController.add(
            const AuthenticationState.authenticated(isSignedUp: false),
          );
          break;
      }
    } on DioException catch (e) {
      _authStreamController.add(
        AuthenticationState.error(title: '인증 문제', message: e.error as String),
      );
    } catch (e) {
      await secureStorageRepository.deleteAllData();
      _authStreamController.add(
        const AuthenticationState.error(
          title: '인증 문제',
          message: '문제가 발생해 인증에 실패했어요',
        ),
      );
    }
  }

  /// 인증 정보로 로그인을 요청합니다.
  @override
  Future<Either<String, SignInResponseModel>> signIn({
    required String studentId,
    required String password,
  }) async {
    try {
      final deviceToken = await DeviceTokenRepositoryImpl.getDeviceToken();
      final response = await dio.post(
        AuthenticationApiEndpoints.signIn,
        data: {
          'studentId': studentId,
          'password': password,
          'deviceToken': deviceToken
        },
      );

      final parsedData = SignInResponseModel.fromJson(response.data);
      return parsedData.map(
        success: (value) async {
          await secureStorageRepository.saveTokens(
            accessToken: value.accessToken,
            refreshToken: value.refreshToken,
          );

          // 강좌 데이터 추출 성공시에만 인증 처리
          if (value.extract == true) {
            _authStreamController.add(
              const AuthenticationState.authenticated(isSignedUp: false),
            );
          }
          return Right(value);
        },
        error: (value) => Right(value),
      );
    } on DioException catch (e) {
      return Left(e.error as String);
    } catch (e) {
      _authStreamController.add(const AuthenticationState.unauthenticated());
      return const Left('문제가 발생해 로그인에 실패했어요');
    }
  }

  /// 인증 정보로 사용자 정보를 요청합니다.
  @override
  Future<Either<String, User>> fetchUserData({
    required String studentId,
    required String password,
  }) async {
    try {
      final response = await dio.post(
        AuthenticationApiEndpoints.fetchUser,
        data: {
          'studentId': studentId,
          'password': password,
        },
      );

      final parsedData = UserModel.fromJson(response.data);
      return parsedData.map(
        (user) => Right(user),
        error: (value) => Left(value.code.message),
      );
    } on DioException catch (e) {
      return Left(e.error as String);
    } catch (e) {
      return const Left('문제가 발생해 학생 정보를 가져오지 못했어요');
    }
  }

  /// 사용자 정보로 회원가입을 요청합니다.
  @override
  Future<Either<String, SignUpResponse>> signUp({
    required String studentId,
    required String password,
    required User user,
  }) async {
    try {
      final deviceToken = await DeviceTokenRepositoryImpl.getDeviceToken();
      final response = await dio.post(
        AuthenticationApiEndpoints.signUp,
        data: {
          'studentId': studentId,
          'password': password,
          'name': user.name,
          'college': user.college,
          'department': user.department,
          'major': user.major,
          'deviceToken': deviceToken
        },
      );

      final parsedData = SignUpResponseModel.fromJson(response.data);
      return parsedData.map(
        (signUpResponse) async {
          await secureStorageRepository.saveTokens(
            accessToken: signUpResponse.accessToken,
            refreshToken: signUpResponse.refreshToken,
          );
          return Right(signUpResponse);
        },
        error: (value) => Left(value.code.message),
      );
    } on DioException catch (e) {
      return Left(e.error as String);
    } catch (e) {
      return const Left('문제가 발생해 회원가입에 실패했어요');
    }
  }

  /// 데이터 추출을 요청합니다.
  @override
  Future<Either<String, Unit>> requestExtraction() async {
    try {
      dio.interceptors.add(tokenInterceptor);

      final courseExtractResponse = await dio.post(
        CourseApiEndpoints.extraction,
      );
      if (courseExtractResponse.statusCode != 200) {
        final errorCode = courseExtractResponse.data['code'] as String;
        final parsedData = const ErrorCodeConverter().fromJson(errorCode);

        // 추출 실패 시 인증 정보 삭제
        await secureStorageRepository.deleteAllData();
        return Left(parsedData.message);
      }

      _authStreamController.add(
        const AuthenticationState.authenticated(isSignedUp: true),
      );
      return const Right(unit);
    } on DioException catch (e) {
      return Left(e.error as String);
    } catch (e) {
      _authStreamController.add(const AuthenticationState.unauthenticated());
      return const Left('문제가 발생해 데이터를 불러오지 못했어요');
    } finally {
      dio.interceptors.remove(tokenInterceptor);
    }
  }

  /// 로그아웃을 수행합니다.
  @override
  Future<Either<String, Unit>> logout() async {
    try {
      dio.interceptors.add(tokenInterceptor);

      final deviceToken = await DeviceTokenRepositoryImpl.getDeviceToken();
      final response = await dio.delete(
        AuthenticationApiEndpoints.logout,
        data: {'deviceToken': deviceToken},
      );

      if (response.statusCode != 200) {
        final errorCode = response.data['code'] as String;
        final parsedData = const ErrorCodeConverter().fromJson(errorCode);
        return Left(parsedData.message);
      }

      await secureStorageRepository.deleteAllData();
      _authStreamController.add(const AuthenticationState.unauthenticated());
      return const Right(unit);
    } on DioException catch (e) {
      return Left(e.error as String);
    } catch (e) {
      return const Left('로그아웃에 실패했어요');
    } finally {
      dio.interceptors.remove(tokenInterceptor);
    }
  }

  /// 계정 삭제를 요청합니다.
  @override
  Future<Either<String, Unit>> signOut({required String password}) async {
    try {
      dio.interceptors.add(tokenInterceptor);

      final deviceToken = await DeviceTokenRepositoryImpl.getDeviceToken();
      final response = await dio.patch(
        AuthenticationApiEndpoints.signout,
        data: {
          'password': password,
          'deviceToken': deviceToken,
        },
      );

      if (response.statusCode != 200) {
        final errorCode = response.data['code'] as String;
        final parsedData = const ErrorCodeConverter().fromJson(errorCode);
        return Left(parsedData.message);
      }

      await secureStorageRepository.deleteAllData();
      _authStreamController.add(const AuthenticationState.unauthenticated());
      return const Right(unit);
    } on DioException catch (e) {
      return Left(e.error as String);
    } catch (e) {
      return const Left('문제가 발생해 계정을 삭제하지 못했어요');
    } finally {
      dio.interceptors.remove(tokenInterceptor);
    }
  }

  /// AccessToken 재발급을 요청합니다.
  Future<void> _reissueAccessToken() async {
    try {
      final refreshToken = await secureStorageRepository.readRefreshToken();
      final response = await dio.post(
        AuthenticationApiEndpoints.reissue,
        data: {'refreshToken': refreshToken},
      );

      final reissueResponse = TokenReissueResponse.fromJson(response.data);
      await secureStorageRepository.saveTokens(
        accessToken: reissueResponse.accessToken,
      );
    } on DioException {
      rethrow;
    } catch (e) {
      throw Exception('서비스 이용을 위한 인증에 실패했어요');
    }
  }
}
