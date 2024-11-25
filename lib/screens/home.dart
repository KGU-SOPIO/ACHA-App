import 'package:flutter/material.dart';

import 'package:acha/screens/course.dart';
import 'package:acha/screens/notification.dart';
import 'package:acha/screens/mypage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const HomeScreen());
  }
}

class _HomeScreenState extends State<HomeScreen> {
  int _pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _pageIndex,
        children: const [
          HomeScreen(),
          CourseScreen(),
          NotificationScreen(),
          MyPageScreen()
        ],
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (index) {
          setState(() {
            _pageIndex = index;
          });
        },
        selectedIndex: _pageIndex,
        destinations: const [
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: "홈",
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.class_),
            icon: Icon(Icons.class_outlined),
            label: "강좌",
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.notifications),
            icon: Icon(Icons.notifications_outlined),
            label: "알림",
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.person),
            icon: Icon(Icons.person_outline),
            label: "내 정보",
          )
        ],
      ),
    );
  }
}