import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

class TodayCourseContainer extends StatelessWidget {
  const TodayCourseContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final String formattedDate = DateFormat("M월 d일").format(DateTime.now());

    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
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
        ],
      ),
    );
  }
}