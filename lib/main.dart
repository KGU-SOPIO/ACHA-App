import 'package:flutter/material.dart';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:acha/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import 'package:acha/app.dart';

import 'package:acha/repository/index.dart';

import 'package:acha/network/interceptor/index.dart';

import 'package:acha/widgets/toast/toast_manager.dart';

late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

late AndroidNotificationChannel channel;

bool isFlutterLocalNotificationsInitialized = false;

Future<void>setupFlutterNotifications() async {
  if (isFlutterLocalNotificationsInitialized) {
    return;
  }

  channel = const AndroidNotificationChannel(
    '아차',
    '알림',
    description: '강의 및 과제를 놓치지 않도록 알려드려요',
    importance: Importance.high
  );

  flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  const AndroidInitializationSettings initializationSettingsAndroid = AndroidInitializationSettings('@mipmap/launcher_icon');
  const DarwinInitializationSettings initializationSettingsIOS = DarwinInitializationSettings(requestSoundPermission: false, requestBadgePermission: false, requestAlertPermission: false);
  final InitializationSettings initializationSettings = InitializationSettings(android: initializationSettingsAndroid, iOS: initializationSettingsIOS);
  await flutterLocalNotificationsPlugin.initialize(initializationSettings);

  await flutterLocalNotificationsPlugin.resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()?.createNotificationChannel(channel);

  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    alert: true,
    badge: true,
    sound: true
  );

  isFlutterLocalNotificationsInitialized = true;
}

@pragma('vm:entry-point')
Future<void> _handleBackgroundMessage(RemoteMessage message) async {
  await setupFlutterNotifications();
  showNotification(message);
}

void _handleForegroundMessage(RemoteMessage message) {
  showNotification(message);
}

void showNotification(RemoteMessage message) {
  RemoteNotification? notification = message.notification;
  AndroidNotification? android = message.notification?.android;
  if (notification != null && android != null) {
    flutterLocalNotificationsPlugin.show(
      notification.hashCode,
      notification.title,
      notification.body,
      NotificationDetails(
        android: AndroidNotificationDetails(
          channel.id,
          channel.name,
          channelDescription: channel.description,
          icon: 'launcher_icon'
        )
      )
    );
  }
}

void _checkReinstall() async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  final isFirstRun = sharedPreferences.getBool("isFirstRun") ?? true;
  if (isFirstRun) {
    const storage = FlutterSecureStorage();
    await storage.deleteAll();
    sharedPreferences.setBool("isFirstRun", false);
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('ko_KR', null);
  
  /// Firebase Cloud Messaging
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  
  FirebaseMessaging.onMessage.listen(_handleForegroundMessage);
  FirebaseMessaging.onBackgroundMessage(_handleBackgroundMessage);

  await setupFlutterNotifications();

  debugPrint(await FirebaseMessaging.instance.getToken());

  /// 재설치 시 기존 데이터를 삭제합니다.
  _checkReinstall();

  /// GetIt
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

  /// HIVE
  await getIt<DataStorage>().init();

  runApp(const App());
}