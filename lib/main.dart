import 'package:flutter/material.dart';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:acha/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import 'package:acha/app.dart';

import 'package:acha/core/utils/index.dart';
import 'package:acha/core/network/interceptors/index.dart';
import 'package:acha/data/repositories/index.dart';
import 'package:acha/domain/repositories/index.dart';
import 'package:acha/presentation/widgets/index.dart';

late final DeviceTokenRepository _deviceTokenRepository;

late final AndroidNotificationChannel channel;
late final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;
bool isFlutterLocalNotificationsInitialized = false;

Future<void> setupFlutterNotifications() async {
  if (isFlutterLocalNotificationsInitialized) return;

  flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  /// Flutter Local Notification 설정
  const initializationSettingsAndroid = AndroidInitializationSettings(
    '@mipmap/launcher_icon',
  );
  const initializationSettingsIOS = DarwinInitializationSettings(
    requestSoundPermission: false,
    requestBadgePermission: false,
    requestAlertPermission: false,
  );
  await flutterLocalNotificationsPlugin.initialize(const InitializationSettings(
    android: initializationSettingsAndroid,
    iOS: initializationSettingsIOS,
  ));

  /// Android Foregroud 알림 수신을 위해 알림 채널을 설정합니다.
  channel = const AndroidNotificationChannel(
    '아차',
    '알림',
    description: '강의 및 과제를 놓치지 않도록 알려드려요',
    importance: Importance.max,
  );
  await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>()
      ?.createNotificationChannel(channel);

  /// iOS Foregroud 알림 수신을 위해 우선순위를 높게 설정합니다.
  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    alert: true,
    badge: true,
    sound: true,
  );

  isFlutterLocalNotificationsInitialized = true;
}

@pragma('vm:entry-point')
Future<void> _handleBackgroundMessage(RemoteMessage message) async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await setupFlutterNotifications();
  showNotification(message);
}

void _handleForegroundMessage(RemoteMessage message) =>
    showNotification(message);

void showNotification(RemoteMessage message) {
  var notification = message.notification;
  var android = message.notification?.android;
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
          icon: android.smallIcon,
        ),
      ),
    );
  }
}

Future<void> _checkReinstall() async {
  var sharedPreferences = await SharedPreferences.getInstance();
  final isFirstRun = sharedPreferences.getBool('isFirstRun') ?? true;
  if (isFirstRun) {
    const storage = FlutterSecureStorage();
    await storage.deleteAll();
    await sharedPreferences.setBool('isFirstRun', false);
  }
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('ko_KR', null);

  /// Firebase 서비스를 초기화합니다.
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  /// 재설치 시 기존 데이터를 삭제합니다.
  await _checkReinstall();

  /// GetIt 설정
  final getIt = GetIt.I;
  final baseOptions = BaseOptions(
    connectTimeout: const Duration(seconds: 3),
    receiveTimeout: const Duration(seconds: 15),
    sendTimeout: const Duration(seconds: 5),
    validateStatus: (status) => status != null && status < 500,
  );
  final interceptorDio = Dio(baseOptions);

  getIt.registerSingleton<SecureStorageRepository>(SecureStorageRepositoryImpl(
    secureStorage: const FlutterSecureStorage(),
  ));
  getIt.registerSingleton<ConnectivityChecker>(ConnectivityChecker());
  getIt.registerSingleton<Dio>(
    () {
      final dio = Dio(baseOptions)
        ..interceptors.add(TokenInterceptor(
          dio: interceptorDio,
          secureStorageRepository: GetIt.I<SecureStorageRepository>(),
        ))
        ..interceptors.add(ErrorInterceptor(
          connectivityChecker: GetIt.I<ConnectivityChecker>(),
        ));
      return dio;
    }(),
  );
  getIt.registerLazySingleton<AuthenticationRepository>(
    () => AuthenticationRepositoryImpl(
      dio: () {
        final dio = Dio(baseOptions)
          ..interceptors.add(ErrorInterceptor(
            connectivityChecker: GetIt.I<ConnectivityChecker>(),
          ));
        return dio;
      }(),
      tokenInterceptor: TokenInterceptor(
        dio: interceptorDio,
        secureStorageRepository: GetIt.I<SecureStorageRepository>(),
      ),
      secureStorageRepository: GetIt.I<SecureStorageRepository>(),
    ),
  );
  getIt.registerLazySingleton<UserRepository>(
    () => UserRepositoryImpl(dio: GetIt.I<Dio>()),
  );
  getIt.registerLazySingleton<CourseRepository>(
    () => CourseRepositoryImpl(dio: GetIt.I<Dio>()),
  );
  getIt.registerLazySingleton<AlertRepository>(
    () => AlertRepositoryImpl(dio: GetIt.I<Dio>()),
  );
  getIt.registerLazySingleton<ToastManager>(() => ToastManager());

  // Firebase Cloud Messaging를 설정합니다.
  FirebaseMessaging.onMessage.listen(_handleForegroundMessage);
  FirebaseMessaging.onBackgroundMessage(_handleBackgroundMessage);
  await setupFlutterNotifications();

  /// FCM 토큰 리스너를 등록합니다.
  _deviceTokenRepository = DeviceTokenRepositoryImpl(dio: GetIt.I<Dio>());
  FirebaseMessaging.instance.onTokenRefresh
      .listen(_deviceTokenRepository.updateDeviceToken);

  runApp(const App());
}
