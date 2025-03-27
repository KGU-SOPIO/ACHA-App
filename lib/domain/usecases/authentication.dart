import 'package:dartz/dartz.dart';

import 'package:acha/data/models/index.dart';
import 'package:acha/domain/repositories/index.dart';

class SignInUseCase {
  SignInUseCase({required this.authenticationRepository});

  final AuthenticationRepository authenticationRepository;

  Future<Either<String, SignInResponseModel>> call({
    required String studentId,
    required String password,
    required bool retry,
  }) {
    return authenticationRepository.signIn(
      studentId: studentId,
      password: password,
      retry: retry,
    );
  }
}

class FetchUserDataUseCase {
  FetchUserDataUseCase({required this.authenticationRepository});

  final AuthenticationRepository authenticationRepository;

  Future<Either<String, User>> call({
    required String studentId,
    required String password,
  }) {
    return authenticationRepository.fetchUserData(
      studentId: studentId,
      password: password,
    );
  }
}

class SignUpUseCase {
  SignUpUseCase({required this.authenticationRepository});

  final AuthenticationRepository authenticationRepository;

  Future<Either<String, SignUpResponse>> call({
    required String studentId,
    required String password,
    required User user,
  }) {
    return authenticationRepository.signUp(
      studentId: studentId,
      password: password,
      user: user,
    );
  }
}

class SignOutUseCase {
  SignOutUseCase({required this.authenticationRepository});

  final AuthenticationRepository authenticationRepository;

  Future<Either<String, Unit>> call({required String password}) {
    return authenticationRepository.signOut(password: password);
  }
}

class RequestExtractionUseCase {
  RequestExtractionUseCase({required this.authenticationRepository});

  final AuthenticationRepository authenticationRepository;

  Future<Either<String, Unit>> call() {
    return authenticationRepository.requestExtraction();
  }
}

class LogoutUseCase {
  LogoutUseCase({required this.authenticationRepository});

  final AuthenticationRepository authenticationRepository;

  Future<Either<String, Unit>> call() {
    return authenticationRepository.logout();
  }
}
