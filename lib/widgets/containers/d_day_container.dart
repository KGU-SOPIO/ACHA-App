import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

import 'package:acha/extensions/index.dart';

class DDayContainer extends StatelessWidget {
  const DDayContainer({super.key, required this.deadline});

  final DateTime deadline;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Color.fromARGB(25, 0, 102, 255),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 0, 102, 255),
              borderRadius: BorderRadius.circular(20)
            ),
            child: Text(
              deadline.toDDay(),
              style: TextStyle(
                fontSize: 12,
                fontFamily: "Pretendard",
                fontWeight: FontWeight.w700,
                color: Colors.white
              )
            )
          ),
          Container(
            padding: EdgeInsets.only(left: 12, right: 16, top: 6, bottom: 6),
            child: Text(
              DateFormat("M월 d일").format(deadline),
              style: TextStyle(
                fontSize: 12,
                fontFamily: "Pretendard",
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 0, 102, 255)
              )
            )
          )
        ]
      )
    );
  }
}