import 'package:flutter/material.dart';

import 'package:acha/core/extensions/index.dart';

class DDayBadge extends StatelessWidget {
  const DDayBadge({super.key, required this.deadline});

  final DateTime deadline;

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final isWithin3Days = deadline.difference(DateTime(now.year, now.month, now.day)).inDays <= 3;
    
    return Container(
      margin: const EdgeInsets.only(left: 10),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: isWithin3Days ? const Color.fromARGB(25, 255, 78, 107) : const Color.fromARGB(25, 0, 102, 255)
      ),
      child: Text(
        deadline.toDDay(),
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: isWithin3Days ? const Color.fromARGB(255, 255, 78, 107) : const Color.fromARGB(255, 0, 102, 255)
        )
      )
    );
  }
}