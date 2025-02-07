import 'package:flutter/material.dart';

class MemberContainer extends StatelessWidget {
  const MemberContainer({super.key, required this.name, required this.part, required this.department, required this.github});

  final String name;
  final String part;
  final String department;
  final String github;

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
          _buildNameRow(),
          const SizedBox(height: 25),
          _buildDepartmentRow()
        ]
      )
    );
  }

  Row _buildNameRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          name,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Color.fromARGB(255, 60, 60, 60)
          )
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 223, 236, 255),
            borderRadius: BorderRadius.circular(20)
          ),
          child: Text(
            part,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(255, 0, 102, 255)
            )
          )
        )
      ]
    );
  }

  Row _buildDepartmentRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          department,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color.fromARGB(255, 109, 109, 109)
          )
        ),
        Text(
          github,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color.fromARGB(255, 109, 109, 109)
          )
        )
      ]
    );
  }
}