import 'package:flutter/material.dart';

import 'package:acha/models/index.dart';

import 'package:auto_size_text/auto_size_text.dart';

class ActivityContainer extends StatelessWidget {
  const ActivityContainer({
    super.key,
    required this.type,
    required this.title,
    required this.course,
    required this.deadline,
    required this.uri,
    this.margin,
    this.backgroundColor
  });

  final ActivityType type;
  final String title;
  final String course;
  final String deadline;
  final Uri uri;
  final EdgeInsets? margin;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: margin,
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 16),
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromARGB(255, 228, 232, 241)),
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTitle(),
          _buildCourse(),
          const SizedBox(height: 14),
          _buildDeadline()
        ]
      )
    );
  }

  Widget _buildTitle() {
    return AutoSizeText(
      title,
      maxLines: 1,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Color.fromARGB(255, 60, 60, 60)
      )
    );
  }

  Widget _buildCourse() {
    return Text(
      course,
      style: const TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w400,
        color: Color.fromARGB(255, 60, 60, 60)
      )
    );
  }

  Widget _buildDeadline() {
    return Text.rich(
      TextSpan(
        style: const TextStyle(
          color: Color.fromARGB(255, 151, 151, 151)
        ),
        children: [
          TextSpan(
            text: deadline,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500
            )
          ),
          const TextSpan(
            text: '까지',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500
            )
          )
        ]
      )
    );
  }
}