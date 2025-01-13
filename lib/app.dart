import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'package:acha/blocs/auth/index.dart';
import 'package:acha/blocs/user/index.dart';
import 'package:acha/blocs/alert/index.dart';

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
  late final AlertRepository _alertRepository;

  @override
  void initState() {
    super.initState();
    _authenticationRepository = GetIt.I<AuthenticationRepository>();
    _userRepository = GetIt.I<UserRepository>();
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
          BlocProvider(create: (context) => AlertBloc(alertRepository: _alertRepository))
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
      builder: (context, child) => BlocListener<AuthenticationBloc, AuthenticationState>(
        listener: (context, state) => state.when(
          authenticated: () => _navigator.pushAndRemoveUntil(HomeScreen.route(), (route) => false),
          unauthenticated:() => _navigator.pushAndRemoveUntil(AuthStartScreen.route(), (route) => false),
          unknown: () {
            return;
          }
        ),
        child: child
      ),
      onGenerateRoute: (context) => SplashScreen.route()
    );
  }
}