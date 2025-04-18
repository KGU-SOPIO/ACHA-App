import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get_it/get_it.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:acha/core/utils/index.dart';
import 'package:acha/core/themes/index.dart';
import 'package:acha/domain/repositories/index.dart';
import 'package:acha/presentation/blocs/index.dart';
import 'package:acha/presentation/screens/index.dart';

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
      DeviceOrientation.portraitDown,
    ]);

    return RepositoryProvider.value(
      value: _authenticationRepository,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AuthenticationBloc(
              authenticationRepository: _authenticationRepository,
            ),
          ),
          BlocProvider(
            create: (context) => UserBloc(
              userRepository: _userRepository,
            ),
          ),
          BlocProvider(
            create: (context) => ActivityBloc(
              courseRepository: _courseRepository,
            ),
          ),
          BlocProvider(
            create: (context) => CourseListBloc(
              courseRepository: _courseRepository,
            ),
          ),
          BlocProvider(
            create: (context) => TodayCourseBloc(
              courseRepository: _courseRepository,
            ),
          ),
          BlocProvider(
            create: (context) => AlertBloc(
              alertRepository: _alertRepository,
            ),
          ),
        ],
        child: const AppView(),
      ),
    );
  }
}

class Behavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
    BuildContext context,
    Widget child,
    ScrollableDetails details,
  ) {
    return child;
  }
}

class AppView extends StatefulWidget {
  const AppView({super.key});

  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  NavigatorState get _navigator => AppView.navigatorKey.currentState!;
  late final ConnectivityChecker _connectivityChecker;
  bool _isNavigate = false;

  @override
  void initState() {
    super.initState();
    _connectivityChecker = GetIt.I<ConnectivityChecker>();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '아차',
      theme: achaLight(),
      darkTheme: achaLight(),
      themeMode: ThemeMode.system,
      navigatorKey: AppView.navigatorKey,
      scrollBehavior: Behavior(),
      onGenerateRoute: (context) => SplashScreen.route(),
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(
            textScaler: const TextScaler.linear(1.0),
          ),
          child: MultiBlocListener(
            listeners: [
              BlocListener<AuthenticationBloc, AuthenticationState>(
                listener: _onAuthenticationStateChanged,
              ),
              BlocListener<UserBloc, UserState>(
                listener: (context, state) => _checkStates(context),
              ),
              BlocListener<TodayCourseBloc, TodayCourseState>(
                listener: (context, state) => _checkStates(context),
              ),
            ],
            child: child!,
          ),
        );
      },
    );
  }

  /// 인증 상태 변화를 감지합니다.
  void _onAuthenticationStateChanged(
    BuildContext context,
    AuthenticationState state,
  ) async {
    final isConnected = await _connectivityChecker.isConnected();
    if (!isConnected) {
      await _navigator.pushAndRemoveUntil(
        ErrorScreen.route(
          title: '인터넷 연결 문제',
          message: '인터넷 연결 확인 후 앱을 재실행해 주세요',
          connectionError: true,
        ),
        (route) => false,
      );
    }

    state.when(
      unknown: () {},
      error: (title, message) async {
        await _navigator.pushAndRemoveUntil(
          ErrorScreen.route(title: title, message: message),
          (route) => false,
        );
      },
      authenticated: () => _fetchData(context),
      unauthenticated: (isExpired) async {
        _isNavigate = false;
        if (isExpired == true) {
          await _navigator.pushAndRemoveUntil(
            ErrorScreen.route(
              title: '인증 만료',
              message: '인증 상태가 만료되었어요\n다시 로그인해 주세요',
            ),
            (route) => false,
          );
        } else {
          await _navigator.pushAndRemoveUntil(
            AuthStartScreen.route(),
            (route) => false,
          );
        }
      },
    );
  }

  /// 서버로부터 필수 데이터를 요청합니다.
  void _fetchData(BuildContext context) {
    context.read<UserBloc>().add(const UserEvent.fetchUser());
    context.read<TodayCourseBloc>().add(
          const TodayCourseEvent.fetchTodayCourses(),
        );
    _checkStates(context);
  }

  /// 상태 확인 후 화면을 전환합니다.
  void _checkStates(BuildContext context) {
    if (_isNavigate) return;

    final userState = context.read<UserBloc>().state;
    final courseState = context.read<TodayCourseBloc>().state;

    if (courseState.status == TodayCourseStatus.loading ||
        userState.status == UserStatus.loading) {
      return;
    } else {
      _isNavigate = true;
      _navigator.pushAndRemoveUntil(
        MainScreen.route(),
        (route) => false,
      );
    }
  }
}
