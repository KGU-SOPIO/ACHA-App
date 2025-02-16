import 'package:acha/data/models/index.dart';

abstract class UserRepository {
  Future<User> fetchUser();
}
