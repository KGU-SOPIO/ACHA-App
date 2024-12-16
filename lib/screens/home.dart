import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import 'package:acha/screens/main.dart';
import 'package:acha/screens/course.dart';
import 'package:acha/screens/notification.dart';
import 'package:acha/screens/mypage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();

  static Route<void> route() {
    return MaterialPageRoute(
      builder: (context) => const HomeScreen()
    );
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
          MainScreen(),
          CourseScreen(),
          NotificationScreen(),
          MyPageScreen()
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color(0XFF000066).withOpacity(0.05),
              blurRadius: 15,
              spreadRadius: 10,
              offset: const Offset(0, 10),
            ),
            BoxShadow(
              color: Color(0XFF000066).withOpacity(0.03),
              blurRadius: 7.5,
              spreadRadius: 5,
              offset: const Offset(0, 5),
            ),
            BoxShadow(
              color: Color(0XFF000066).withOpacity(0.01),
              blurRadius: 5,
              spreadRadius: 2.5,
              offset: const Offset(0, 2.5),
            ),
          ]
        ),
        child: NavigationBarTheme(
          data: NavigationBarThemeData(
            backgroundColor: Colors.white,
            indicatorColor: Colors.transparent,
            labelTextStyle: WidgetStateProperty.resolveWith((Set states) {
              if (states.contains(WidgetState.selected)) {
                return TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 0, 102, 255)
                );
              } else {
                return TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 181, 175, 175)
                );
              }
            })
          ),
          child: NavigationBar(
            onDestinationSelected: (int index) {
              setState(() {
                _pageIndex = index;
              });
            },
            selectedIndex: _pageIndex,
            destinations: [
              NavigationDestination(
                selectedIcon: SvgPicture.asset("lib/assets/svgs/navigation/home.svg"),
                icon: SvgPicture.asset("lib/assets/svgs/navigation/home_outline.svg"),
                label: "홈",
              ),
              NavigationDestination(
                selectedIcon: SvgPicture.asset("lib/assets/svgs/navigation/course.svg"),
                icon: SvgPicture.asset("lib/assets/svgs/navigation/course_outline.svg"),
                label: "강좌",
              ),
              NavigationDestination(
                selectedIcon: SvgPicture.asset("lib/assets/svgs/navigation/notification.svg"),
                icon: SvgPicture.asset("lib/assets/svgs/navigation/notification_outline.svg"),
                label: "알림",
              ),
              NavigationDestination(
                selectedIcon: SvgPicture.asset("lib/assets/svgs/navigation/user.svg"),
                icon: SvgPicture.asset("lib/assets/svgs/navigation/user_outline.svg"),
                label: "내 정보",
              )
            ],
          )
        )
      )
    );
  }
}