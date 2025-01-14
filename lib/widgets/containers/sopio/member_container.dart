import 'package:flutter/material.dart';

class MemberContainer extends StatelessWidget {
  const MemberContainer({super.key, required this.name, required this.part, required this.department, required this.sns});

  final String name;
  final String part;
  final String department;
  final String sns;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Color.fromARGB(255, 228, 232, 241)
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500
                )
              ),
              Text(
                part,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500
                )
              )
            ],
          ),
          SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                department,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400
                )
              ),
              Text(
                sns,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400
                )
              )
            ]
          )
        ]
      )
    );
  }
}