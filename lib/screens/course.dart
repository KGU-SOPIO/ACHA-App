import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import 'package:acha/screens/course/main.dart';

import 'package:acha/widgets/containers/index.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({super.key});

  @override
  State<CourseScreen> createState() => _CourseScreenState();

  static Route<void> route() {
    return MaterialPageRoute(builder: (context) => const CourseScreen());
  }
}

class _CourseScreenState extends State<CourseScreen> {
  final List courseList = [
    {
      'professorName': '송명진 교수님',
      'courseName': '사고와 표현',
      'lectureRoom': '3306',
      'daysLeft': 1,
    },
    {
      'professorName': '송명진 교수님',
      'courseName': '사고와 표현',
      'lectureRoom': '3306',
      'daysLeft': 1,
    },
    {
      'professorName': '송명진 교수님',
      'courseName': '사고와 표현',
      'lectureRoom': '3306',
      'daysLeft': 1,
    },
    {
      'professorName': '송명진 교수님',
      'courseName': '사고와 표현',
      'lectureRoom': '3306',
      'daysLeft': 1,
    },
    {
      'professorName': '송명진 교수님',
      'courseName': '사고와 표현',
      'lectureRoom': '3306',
      'daysLeft': 1,
    },
    {
      'professorName': '송명진 교수님',
      'courseName': '사고와 표현',
      'lectureRoom': '3306',
      'daysLeft': 1,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 246, 248),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: AchaAppbar()
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 26),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 18),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 4),
                            child: Text(
                              '나의 강좌',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Color.fromARGB(255, 30, 30, 30)
                              ),
                            )
                          ),
                          SvgPicture.asset('lib/assets/svgs/course/book.svg')
                        ],
                      )
                    ),
                    Column(
                      children: [
                        ...courseList.map((course) {
                          return CourseContainer(
                            professorName: course['professorName'],
                            courseName: course['courseName'],
                            lectureRoom: course['lectureRoom'],
                            daysLeft: course['daysLeft'],
                            onTap:() => Navigator.push(context, CourseMainScreen.route()),
                          );
                        }),
                        const SizedBox(height: 16)
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        )
      ),
    );
  }
}