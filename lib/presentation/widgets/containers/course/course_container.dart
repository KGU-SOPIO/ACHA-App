import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';

import 'package:acha/core/constants/index.dart';
import 'package:acha/presentation/widgets/index.dart';

class CourseContainer extends StatelessWidget {
  const CourseContainer({
    super.key,
    required this.professorName,
    required this.courseName,
    required this.lectureRoom,
    this.deadline,
    required this.onTap,
  });

  final String professorName;
  final String courseName;
  final String lectureRoom;
  final DateTime? deadline;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: onTap, child: _buildContainer());
  }

  Widget _buildContainer() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 16),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.5,
          color: AchaColors.gray237_239_242,
        ),
        borderRadius: BorderRadius.circular(20),
        color: AchaColors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildCourseInformation(),
          _buildDDayBadge(),
        ],
      ),
    );
  }

  Widget _buildCourseInformation() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$professorName 교수',
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: AchaColors.gray109,
          ),
        ),
        const SizedBox(height: 3),
        AutoSizeText(
          courseName,
          maxLines: 1,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: AchaColors.black,
          ),
        ),
        const SizedBox(height: 2),
        AutoSizeText(
          lectureRoom,
          maxLines: 1,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: AchaColors.black,
          ),
        ),
      ],
    );
  }

  Widget _buildDDayBadge() {
    if (deadline != null) {
      return DDayBadge(deadline: deadline!);
    }
    return const SizedBox.shrink();
  }
}
