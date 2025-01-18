import 'package:flutter/material.dart';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:acha/firebase_options.dart';

import 'package:acha/app.dart';

import 'package:acha/repository/index.dart';

import 'package:acha/network/interceptor/index.dart';

import 'package:acha/widgets/toast/toast_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('ko_KR', null);
  
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  final GetIt getIt = GetIt.I;
  getIt.registerSingleton<SecureStorage>(SecureStorage());
  getIt.registerSingleton<DataStorage>(DataStorage());
  getIt.registerSingleton(
    () {
      final Dio dio = Dio(BaseOptions(
        connectTimeout: const Duration(seconds: 3),
        receiveTimeout: const Duration(seconds: 15),
        sendTimeout: const Duration(seconds: 5)
      ));
      dio.interceptors.add(TokenInterceptor());
      dio.interceptors.add(ErrorInterceptor());
      return dio;
    }()
  );
  getIt.registerLazySingleton<AuthenticationRepository>(() => AuthenticationRepository());
  getIt.registerLazySingleton<UserRepository>(() => UserRepository());
  getIt.registerLazySingleton<CourseRepository>(() => CourseRepository());
  getIt.registerLazySingleton<AlertRepository>(() => AlertRepository());
  getIt.registerLazySingleton<ToastManager>(() => ToastManager());

  await getIt<DataStorage>().init();

  runApp(const App());
}