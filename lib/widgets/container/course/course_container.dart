import 'package:flutter/material.dart';

class CourseContainer extends StatelessWidget {
  const CourseContainer({
      super.key,
      required this.professorName,
      required this.courseName,
      required this.lectureRoom,
      required this.daysLeft,
      required this.onTap
    });

  final String professorName;
  final String courseName;
  final String lectureRoom;
  final int daysLeft;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(bottom: 10),
        padding: EdgeInsets.symmetric(horizontal: 26, vertical: 16),
        decoration: BoxDecoration(
          border: Border.all(
            width: 1.5,
            color: Color.fromARGB(255, 237, 239, 242)
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
                    "$professorName 교수",
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
                    courseName,
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Pretendard",
                      fontWeight: FontWeight.w400,
                      color: Colors.black
                    )
                  )
                ),
                Text(
                  lectureRoom,
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
                "D - $daysLeft",
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
    );
  }
}