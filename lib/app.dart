import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'package:acha/blocs/auth/authentication_bloc.dart';
import 'package:acha/blocs/course_manager/index.dart';

import 'package:acha/repository/index.dart';

import 'package:acha/screens/splash.dart';
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

  @override
  void initState() {
    super.initState();
    _authenticationRepository = GetIt.I<AuthenticationRepository>();
    _userRepository = UserRepository();
    _courseRepository = GetIt.I<CourseRepository>();
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
          BlocProvider(
            create: (_) => AuthenticationBloc(
              authenticationRepository: _authenticationRepository,
              userRepository: _userRepository
            )
          ),
          BlocProvider(
            create: (context) => CourseManagerBloc(
              courseRepository: _courseRepository
            )
          )
        ],
        child: const AppView(),
      ),
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
  NavigatorState get _navigator => AppView.navigatorKey.currentState!;
  bool _isNavigate = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ACHA',
      theme: achaLight(),
      darkTheme: achaDark(),
      themeMode: ThemeMode.system,
      navigatorKey: AppView.navigatorKey,
      scrollBehavior: Behavior(),
      builder: (context, child) {
        return MultiBlocListener(
          listeners: [
            BlocListener<AuthenticationBloc, AuthenticationState>(
              listener: (context, state) {
                context.read<CourseManagerBloc>().add(Load());
                _checkStates(context, state, context.read<CourseManagerBloc>().state);
              }
            ),
            BlocListener<CourseManagerBloc, CourseManagerState>(
              listener: (context, state) => _checkStates(context, context.read<AuthenticationBloc>().state, state)
            )
          ],
          child: child!,
        );
      },
      onGenerateRoute: (_) => SplashScreen.route()
    );
  }

  void _checkStates(BuildContext context, AuthenticationState authState, CourseManagerState courseState) {
    if (_isNavigate) return;
    
    if (courseState is Loading) {
      return;
    } else if (courseState is Loaded) {
      if (authState.status == AuthenticationStatus.authenticated) {
        _isNavigate = true;
        _navigator.pushAndRemoveUntil(HomeScreen.route(), (route) => false);
      } else if (authState.status == AuthenticationStatus.unauthenticated) {
        _isNavigate = true;
        _navigator.pushAndRemoveUntil(AuthStartScreen.route(), (route) => false);
      }
    } else if (courseState is Error) {
      debugPrint('서버에서 데이터를 가져오지 못했습니다');
      _navigator.pushAndRemoveUntil(HomeScreen.route(), (route) => false);
    }
  }
}