import 'package:acha/data/models/index.dart';
import 'package:acha/domain/repositories/index.dart';

class SignInUseCase {
  SignInUseCase({required this.authenticationRepository});

  final AuthenticationRepository authenticationRepository;

  Future<SignInResponse> call(
      {required String studentId, required String password}) {
    return authenticationRepository.signIn(
        studentId: studentId, password: password);
  }
}

class FetchUserDataUseCase {
  FetchUserDataUseCase({required this.authenticationRepository});

  final AuthenticationRepository authenticationRepository;

  Future<UserResponse> call(
      {required String studentId, required String password}) {
    return authenticationRepository.fetchUserData(
        studentId: studentId, password: password);
  }
}

class SignUpUseCase {
  SignUpUseCase({required this.authenticationRepository});

  final AuthenticationRepository authenticationRepository;

  Future<SignUpResponse> call(
      {required String studentId,
      required String password,
      required User user}) {
    return authenticationRepository.signUp(
        studentId: studentId, password: password, user: user);
  }
}

class RequestExtractionUseCase {
  RequestExtractionUseCase({required this.authenticationRepository});

  final AuthenticationRepository authenticationRepository;

  Future<void> call() {
    return authenticationRepository.requestExtraction();
  }
}

class LogoutUseCase {
  LogoutUseCase({required this.authenticationRepository});

  final AuthenticationRepository authenticationRepository;

  Future<void> call() {
    return authenticationRepository.logout();
  }
}
