import 'dart:async';

import 'package:get_it/get_it.dart';

import 'package:acha/repository/storage.dart';
import 'package:acha/models/user/user.dart';

class UserRepository {
  final SecureStorage _secureStorage = GetIt.instance<SecureStorage>();

  Future<User?> getUser() async {
    try {
      return await _secureStorage.readUser();
    } catch (e) {
      return null;
    }
  }
}