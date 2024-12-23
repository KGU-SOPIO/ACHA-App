import 'package:flutter/material.dart';

import 'package:acha/widgets/container/appbar/acha_appbar.dart';
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
      appBar: AchaAppbar(),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 26),
          color: Color.fromARGB(255, 245, 246, 248),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 18),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 4),
                      child: Text(
                        "나의 강좌",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: "Pretendard",
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 30, 30, 30)
                        ),
                      )
                    ),
                    SvgPicture.asset("lib/assets/svgs/course/book.svg")
                  ],
                )
              ),
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(bottom: 10),
                    padding: EdgeInsets.symmetric(horizontal: 26, vertical: 16),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromARGB(255, 237, 239, 242),
                        width: 1.5
                      ),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 3),
                              child: Text(
                                "송명진 교수님",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: "Pretendard",
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 109, 109, 109)
                                )
                              )
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 2),
                              child: Text(
                                "사고와 표현",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "Pretendard",
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black
                                )
                              )
                            ),
                            Text(
                              "3306",
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: "Pretendard",
                                fontWeight: FontWeight.w400,
                                color: Colors.black
                              )
                            )
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromARGB(25, 255, 78, 107)
                          ),
                          child: Text(
                            "D - 1",
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: "Pretendard",
                              fontWeight: FontWeight.w700,
                              color: Color.fromARGB(255, 255, 78, 107)
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ),
    );
  }
}