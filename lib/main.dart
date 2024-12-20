import 'package:flutter/material.dart';

import 'package:get_it/get_it.dart';

import 'package:acha/app.dart';

import 'package:acha/repository/user.dart';
import 'package:acha/repository/authentication.dart';
import 'package:acha/repository/storage.dart';

import 'package:acha/widgets/toast/toast_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final GetIt getIt = GetIt.I;
  getIt.registerSingleton<SecureStorage>(SecureStorage());
  getIt.registerLazySingleton<UserRepository>(() => UserRepository());
  getIt.registerLazySingleton<AuthenticationRepository>(() => AuthenticationRepository());
  getIt.registerLazySingleton<ToastManager>(() => ToastManager());

  runApp(const App());
}