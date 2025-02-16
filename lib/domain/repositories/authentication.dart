import 'package:acha/data/models/index.dart';
import 'package:acha/presentation/blocs/index.dart';

abstract class AuthenticationRepository {
  Stream<AuthenticationStatus> get authStream;
  Future disposeAuthStream();

  Future<SignInResponse> signIn(
      {required String studentId, required String password});

  Future<UserResponse> fetchUserData(
      {required String studentId, required String password});

  Future<SignUpResponse> signUp(
      {required String studentId,
      required String password,
      required User user});

  Future<void> requestExtraction();
  Future<void> logout();
}
