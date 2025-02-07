import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'package:acha/blocs/auth/index.dart';
import 'package:acha/blocs/user/index.dart';
import 'package:acha/blocs/course_list/index.dart';
import 'package:acha/blocs/today_course/index.dart';
import 'package:acha/blocs/activity/index.dart';
import 'package:acha/blocs/alert/index.dart';

import 'package:acha/repository/index.dart';

import 'package:acha/network/utils/connectivity_checker.dart';

import 'package:acha/screens/splash.dart';
import 'package:acha/screens/connect_error.dart';
import 'package:acha/screens/home.dart';
import 'package:acha/screens/auth/index.dart';

import 'package:acha/themes/acha_light.dart';
import 'package:acha/themes/acha_dark.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late final AuthenticationRepository _authenticationRepository;
  late final UserRepository _userRepository;
  late final CourseRepository _courseRepository;
  late final AlertRepository _alertRepository;

  @override
  void initState() {
    super.initState();
    _authenticationRepository = GetIt.I<AuthenticationRepository>();
    _userRepository = GetIt.I<UserRepository>();
    _courseRepository = GetIt.I<CourseRepository>();
    _alertRepository = GetIt.I<AlertRepository>();
  }

  @override
  void dispose() {
    _authenticationRepository.disposeAuthStream();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]);

    return RepositoryProvider.value(
      value: _authenticationRepository,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => AuthenticationBloc(authenticationRepository: _authenticationRepository)),
          BlocProvider(create: (context) => UserBloc(userRepository: _userRepository)),
          BlocProvider(create: (context) => ActivityBloc(courseRepository: _courseRepository)),
          BlocProvider(create: (context) => CourseListBloc(courseRepository: _courseRepository)),
          BlocProvider(create: (context) => TodayCourseBloc(courseRepository: _courseRepository)),
          BlocProvider(create: (context) => AlertBloc(alertRepository: _alertRepository))
        ],
        child: const AppView()
      )
    );
  }
}



class Behavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}

class AppView extends StatefulWidget {
  const AppView({super.key});

  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  final ConnectivityChecker _connectivityChecker = ConnectivityChecker();
  NavigatorState get _navigator => AppView.navigatorKey.currentState!;
  bool _isNavigate = false;
  bool requestPermission = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '아차',
      theme: achaLight(),
      darkTheme: achaDark(),
      themeMode: ThemeMode.system,
      navigatorKey: AppView.navigatorKey,
      scrollBehavior: Behavior(),
      builder: (context, child) => MultiBlocListener(
        listeners: [
          BlocListener<AuthenticationBloc, AuthenticationState>(listener: _onAuthenticationStateChanged),
          BlocListener<UserBloc, UserState>(listener: (context, state) => _checkStates(context)),
          BlocListener<TodayCourseBloc, TodayCourseState>(listener: (context, state) => _checkStates(context))
        ],
        child: child!
      ),
      onGenerateRoute: (context) => SplashScreen.route()
    );
  }

  /// 인증 상태 변화를 감지합니다.
  void _onAuthenticationStateChanged(BuildContext context, AuthenticationState state) {
    state.when(
      authenticated: () {
        _fetchData(context);
      },
      registered: () {
        requestPermission = true;
        _fetchData(context);
      },
      unauthenticated: () async {
        final isConnected = await _connectivityChecker.isConnected();
        if (!isConnected) {
          _navigator.pushAndRemoveUntil(ConnectErrorScreen.route(), (route) => false);
        } else {
          _isNavigate = false;
          _navigator.pushAndRemoveUntil(AuthStartScreen.route(), (route) => false);
        }
      },
      unknown: () {}
    );
  }

  /// 서버로부터 필수 데이터를 요청합니다.
  void _fetchData(BuildContext context) {
    context.read<UserBloc>().add(UserEvent.fetch());
    context.read<TodayCourseBloc>().add(TodayCourseEvent.fetch());
    _checkStates(context);
  }

  /// 상태 확인 후 화면을 전환합니다.
  void _checkStates(BuildContext context) {
    if (_isNavigate) return;

    final userState = context.read<UserBloc>().state;
    final courseState = context.read<TodayCourseBloc>().state;

    if (courseState.status == TodayCourseStatus.loading && userState.status == UserStatus.loading) {
      return;
    } else {
      _isNavigate = true;
      _navigator.pushAndRemoveUntil(HomeScreen.route(requestPermission: requestPermission), (route) => false);
    }
  }
}