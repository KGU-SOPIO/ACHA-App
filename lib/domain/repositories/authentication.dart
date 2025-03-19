import 'package:dartz/dartz.dart';

import 'package:acha/data/models/index.dart';
import 'package:acha/presentation/blocs/index.dart';

abstract class AuthenticationRepository {
  Stream<AuthenticationState> get authStream;
  Future disposeAuthStream();

  Future<Either<String, SignInResponseModel>> signIn({
    required String studentId,
    required String password,
  });

  Future<Either<String, User>> fetchUserData({
    required String studentId,
    required String password,
  });

  Future<Either<String, SignUpResponse>> signUp({
    required String studentId,
    required String password,
    required User user,
  });

  Future<Either<String, Unit>> logout();
  Future<Either<String, Unit>> signOut({
    required String password,
  });

  Future<Either<String, Unit>> requestExtraction();
}
