import 'package:flutter/material.dart';

class ActivityContainer extends StatelessWidget {
  const ActivityContainer({super.key, required this.title, required this.course, required this.deadline});

  final String title;
  final String course;
  final String deadline;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // margin: EdgeInsets.only(bottom: 13),
      padding: EdgeInsets.symmetric(horizontal: 22, vertical: 16),
      decoration: BoxDecoration(
        border: Border.all(
          color: Color.fromARGB(255, 228, 232, 241)
        ),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontFamily: "Pretendard",
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(255, 60, 60, 60)
            )
          ),
          Text(
            course,
            style: TextStyle(
              fontSize: 13,
              fontFamily: "Pretendard",
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(255, 60, 60, 60)
            )
          ),
          SizedBox(height: 14),
          RichText(
            text: TextSpan(
              style: TextStyle(
                fontFamily: "Pretendard",
                color: Color.fromARGB(255, 151, 151, 151)
              ),
              children: [
                TextSpan(
                  text: deadline,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500
                  )
                ),
                TextSpan(
                  text: "까지",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500
                  )
                )
              ]
            )
          )
        ]
      )
    );
  }
}