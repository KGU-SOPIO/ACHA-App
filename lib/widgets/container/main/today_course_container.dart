import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

class TodayCourseContainer extends StatefulWidget {
  const TodayCourseContainer({super.key});

  @override
  State<TodayCourseContainer> createState() => _TodayCourseContainerState();
}

class _TodayCourseContainerState extends State<TodayCourseContainer> {
  @override
  Widget build(BuildContext context) {
    final String formattedDate = DateFormat("M월 d일").format(DateTime.now());

    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        border: Border.all(
          color: Color.fromARGB(255, 228, 232, 241),
          width: 1.5
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Pretendard",
                      color: Color.fromARGB(255, 30, 30, 30)
                    ),
                    children: [
                      TextSpan(
                        text: "오늘의 ",
                        style: TextStyle(fontWeight: FontWeight.w500)
                      ),
                      TextSpan(
                        text: "강의",
                        style: TextStyle(fontWeight: FontWeight.w700)
                      )
                    ]
                  ),
                ),
                Text(
                  formattedDate,
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Pretendard",
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 0, 102, 255)
                  )
                )
              ],
            )
          ),
          Column(
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color.fromARGB(255, 237, 239, 242),
                    width: 1.5
                  ),
                  borderRadius: BorderRadius.circular(20)
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
                )
              )
            ],
          )
        ],
      ),
    );
  }
}