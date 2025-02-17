import 'package:dartz/dartz.dart';

import 'package:acha/data/models/index.dart';

abstract class UserRepository {
  Future<Either<String, User>> fetchUser();
}
