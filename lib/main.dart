import 'package:flutter/material.dart';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'package:acha/app.dart';

import 'package:acha/repository/index.dart';
import 'package:acha/network/interceptor/token.dart';

import 'package:acha/widgets/toast/toast_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('ko_KR', null);

  final GetIt getIt = GetIt.I;
  getIt.registerSingleton<SecureStorage>(SecureStorage());
  getIt.registerSingleton<DataStorage>(DataStorage());
  getIt.registerSingleton(
    () {
      final Dio dio = Dio();
      dio.interceptors.add(TokenInterceptor());
      return dio;
    }()
  );
  getIt.registerLazySingleton<AuthenticationRepository>(() => AuthenticationRepository());
  getIt.registerLazySingleton<ToastManager>(() => ToastManager());

  await getIt<DataStorage>().init();

  runApp(const App());
}