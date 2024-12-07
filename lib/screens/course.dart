import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({super.key});

  @override
  State<CourseScreen> createState() => _CourseScreenState();

  static Route<void> route() {
    return MaterialPageRoute(
      builder: (context) => const CourseScreen()
    );
  }
}

class _CourseScreenState extends State<CourseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight + 10),
        child: AppBar(
          leading: Padding(
            padding: EdgeInsets.only(left: 24),
            child: SvgPicture.asset("lib/assets/svgs/home_logo.svg",
              alignment: Alignment.topLeft),
          ),
          leadingWidth: 80
        )
      ),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Color.fromARGB(255, 245, 246, 248),
        ),
      ),
    );
  }
}