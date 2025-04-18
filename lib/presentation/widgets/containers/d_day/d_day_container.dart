import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';

import 'package:acha/core/constants/index.dart';
import 'package:acha/core/extensions/index.dart';

class DDayContainer extends StatelessWidget {
  const DDayContainer({super.key, required this.deadline});

  final DateTime deadline;

  @override
  Widget build(BuildContext context) {
    final isDDay = deadline.isDDay();
    final primaryColor = AchaColors.primaryBlue;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: primaryColor.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildDDayContainer(isDDay, primaryColor),
          _buildDateContainer(primaryColor),
        ],
      ),
    );
  }

  Widget _buildDDayContainer(bool isDDay, Color primaryColor) {
    return Container(
      width: 72,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: isDDay ? primaryColor : AchaColors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: isDDay ? Colors.transparent : primaryColor,
          width: 1.5,
        ),
      ),
      child: Center(
        child: AutoSizeText(
          deadline.toDDay(),
          maxLines: 1,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w700,
            color: isDDay ? AchaColors.white : primaryColor,
          ),
        ),
      ),
    );
  }

  Widget _buildDateContainer(Color primaryColor) {
    return Container(
      padding: const EdgeInsets.only(left: 12, right: 16, top: 6, bottom: 6),
      child: Text(
        deadline.formatDate(pattern: 'M월 d일'),
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w700,
          color: primaryColor,
        ),
      ),
    );
  }
}
