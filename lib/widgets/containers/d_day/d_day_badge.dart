import 'package:flutter/material.dart';

import 'package:acha/extensions/index.dart';

class DDayBadge extends StatelessWidget {
  const DDayBadge({super.key, required this.deadline});

  final DateTime deadline;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromARGB(25, 255, 78, 107)
      ),
      child: Text(
        deadline.toDDay(),
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: Color.fromARGB(255, 255, 78, 107)
        )
      )
    );
  }
}