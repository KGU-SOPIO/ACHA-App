import 'dart:async';

import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';

import 'package:acha/core/network/interceptors/index.dart';
import 'package:acha/data/models/index.dart';
import 'package:acha/data/converters/index.dart';
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

  final StreamController<AuthenticationStatus> _authStreamController =
      StreamController<AuthenticationStatus>();

  /// 인증 상태 Stream을 반환합니다.
  @override
  Stream<AuthenticationStatus> get authStream async* {
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
          _authStreamController.add(AuthenticationStatus.unauthenticated);
          break;
        case TokenStatus.expired:
          _authStreamController.add(AuthenticationStatus.expired);
          await secureStorageRepository.deleteAllData();
          break;
        case TokenStatus.valid:
          await _reissueAccessToken();
          _authStreamController.add(AuthenticationStatus.authenticated);
          break;
      }
    } on DioException {
      _authStreamController.add(AuthenticationStatus.error);
    } catch (e) {
      _authStreamController.add(AuthenticationStatus.error);
    }
  }

  /// 인증 정보로 로그인을 요청합니다.
  @override
  Future<Either<String, SignInSuccess>> signIn({
    required String studentId,
    required String password,
  }) async {
    try {
      final response = await dio.post(
        AuthenticationApiEndpoints.signIn,
        data: {
          'studentId': studentId,
          'password': password,
        },
      );

      final parsedData = SignInResponseModel.fromJson(response.data);
      return parsedData.map(
        success: (signInResponse) async {
          await secureStorageRepository.saveTokens(
            accessToken: signInResponse.accessToken,
            refreshToken: signInResponse.refreshToken,
          );
          _authStreamController.add(AuthenticationStatus.authenticated);
          return Right(signInResponse);
        },
        error: (value) => Left(value.code.message),
      );
    } on DioException catch (e) {
      return Left(e.error as String);
    } catch (e) {
      _authStreamController.add(AuthenticationStatus.unauthenticated);
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
      _authStreamController.add(AuthenticationStatus.unauthenticated);
      return const Left('문제가 발생해 학생 정보를 가져오지 못했어요');
    }
  }

  /// 인증 정보로 회원가입을 요청합니다.
  @override
  Future<Either<String, SignUpResponse>> signUp({
    required String studentId,
    required String password,
    required User user,
  }) async {
    try {
      final response = await dio.post(
        AuthenticationApiEndpoints.signUp,
        data: {
          'studentId': studentId,
          'password': password,
          'name': user.name,
          'college': user.college,
          'department': user.department,
          'major': user.major
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
      _authStreamController.add(AuthenticationStatus.unauthenticated);
      return const Left('문제가 발생해 회원가입에 실패했어요');
    }
  }

  /// 계정 삭제를 요청합니다.
  @override
  Future<Either<String, Unit>> withdraw({required String password}) async {
    try {
      dio.interceptors.add(tokenInterceptor);

      final response = await dio.post(
        AuthenticationApiEndpoints.withdraw,
        data: {'password': password},
      );
      if (response.statusCode != 200) {
        final parsedData = const ErrorCodeConverter().fromJson(response.data);
        return Left(parsedData.message);
      }

      await secureStorageRepository.deleteAllData();
      _authStreamController.add(AuthenticationStatus.unauthenticated);
      return const Right(unit);
    } on DioException catch (e) {
      return Left(e.error as String);
    } catch (e) {
      return const Left('문제가 발생해 계정을 삭제하지 못했어요');
    }
  }

  /// 데이터 추출을 요청합니다.
  @override
  Future<Either<String, Unit>> requestExtraction() async {
    try {
      dio.interceptors.add(tokenInterceptor);

      final response = await dio.post(CourseApiEndpoints.extraction);
      if (response.statusCode != 200) {
        final parsedData = const ErrorCodeConverter().fromJson(response.data);
        return Left(parsedData.message);
      }

      _authStreamController.add(AuthenticationStatus.registered);
      return const Right(unit);
    } on DioException catch (e) {
      return Left(e.error as String);
    } catch (e) {
      _authStreamController.add(AuthenticationStatus.unauthenticated);
      return const Left('문제가 발생해 데이터를 불러오지 못했어요');
    }
  }

  /// 로그아웃을 수행합니다.
  @override
  Future<Either<String, Unit>> logout() async {
    try {
      await secureStorageRepository.deleteAllData();
      _authStreamController.add(AuthenticationStatus.unauthenticated);
      return const Right(unit);
    } catch (e) {
      return const Left('로그아웃에 실패했어요');
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
