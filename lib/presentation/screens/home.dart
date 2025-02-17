import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:acha/presentation/blocs/index.dart';
import 'package:acha/presentation/screens/index.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.requestPermission});

  final bool requestPermission;

  @override
  State<HomeScreen> createState() => _HomeScreenState();

  static Route<void> route({required bool requestPermission}) {
    return CupertinoPageRoute(
      builder: (context) => BlocProvider(
        create: (context) => NavigationBloc(),
        child: HomeScreen(requestPermission: requestPermission),
      ),
    );
  }
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    _checkPermission();
  }

  /// 기기 알림 권한을 확인하고 요청합니다.
  Future<void> _checkPermission() async {
    if (widget.requestPermission) {
      final messaging = FirebaseMessaging.instance;
      final settings = await messaging.requestPermission(announcement: true);
      if (settings.authorizationStatus == AuthorizationStatus.denied) {
        if (!mounted) return;
        context.read<AlertBloc>().add(const AlertEvent.denyAlert());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationBloc, TabState>(
      builder: (context, state) {
        return Scaffold(
          body: _buildBody(state),
          bottomNavigationBar: _buildBottomNavigationBar(context, state),
        );
      },
    );
  }

  Widget _buildBody(TabState state) {
    return IndexedStack(
      index: state.selectedIndex,
      children: [
        const MainScreen(),
        const CourseScreen(),
        const NotificationScreen(),
        const MyPageScreen(),
      ],
    );
  }

  Widget _buildBottomNavigationBar(BuildContext context, TabState state) {
    return DecoratedBox(
      decoration: BoxDecoration(boxShadow: _buildBoxShadows()),
      child: NavigationBarTheme(
        data: NavigationBarThemeData(
          backgroundColor: Colors.white,
          indicatorColor: Colors.transparent,
          labelTextStyle: WidgetStateProperty.resolveWith(
            (states) {
              if (states.contains(WidgetState.selected)) {
                return const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 0, 102, 255),
                );
              } else {
                return const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 181, 175, 175),
                );
              }
            },
          ),
        ),
        child: NavigationBar(
          onDestinationSelected: (index) =>
              context.read<NavigationBloc>().add(ChangeTab(index)),
          selectedIndex: state.selectedIndex,
          destinations: _buildDestinations(),
        ),
      ),
    );
  }

  List<BoxShadow> _buildBoxShadows() {
    return [
      BoxShadow(
        color: const Color(0XFF000066).withValues(alpha: 0.05),
        blurRadius: 15,
        spreadRadius: 10,
        offset: const Offset(0, 10),
      ),
      BoxShadow(
        color: const Color(0XFF000066).withValues(alpha: 0.03),
        blurRadius: 7.5,
        spreadRadius: 5,
        offset: const Offset(0, 5),
      ),
      BoxShadow(
        color: const Color(0XFF000066).withValues(alpha: 0.01),
        blurRadius: 5,
        spreadRadius: 2.5,
        offset: const Offset(0, 2.5),
      ),
    ];
  }

  List<NavigationDestination> _buildDestinations() {
    return [
      NavigationDestination(
        selectedIcon: SvgPicture.asset('lib/assets/svgs/navigation/home.svg'),
        icon: SvgPicture.asset('lib/assets/svgs/navigation/home_outline.svg'),
        label: '홈',
      ),
      NavigationDestination(
        selectedIcon: SvgPicture.asset('lib/assets/svgs/navigation/course.svg'),
        icon: SvgPicture.asset('lib/assets/svgs/navigation/course_outline.svg'),
        label: '강좌',
      ),
      NavigationDestination(
        selectedIcon:
            SvgPicture.asset('lib/assets/svgs/navigation/notification.svg'),
        icon: SvgPicture.asset(
            'lib/assets/svgs/navigation/notification_outline.svg'),
        label: '알림',
      ),
      NavigationDestination(
        selectedIcon: SvgPicture.asset('lib/assets/svgs/navigation/user.svg'),
        icon: SvgPicture.asset('lib/assets/svgs/navigation/user_outline.svg'),
        label: '내 정보',
      ),
    ];
  }
}
