import 'dart:async';

import 'package:get_it/get_it.dart';

import 'package:acha/models/index.dart';
import 'package:acha/repository/index.dart';

class UserRepository {
  final SecureStorage _secureStorage = GetIt.I<SecureStorage>();

  Future<User?> getUser() async {
    try {
      return await _secureStorage.readUser();
    } catch (e) {
      return null;
    }
  }
}