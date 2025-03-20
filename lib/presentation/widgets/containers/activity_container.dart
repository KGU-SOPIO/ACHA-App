import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:auto_size_text/auto_size_text.dart';

import 'package:acha/core/constants/index.dart';
import 'package:acha/core/extensions/index.dart';
import 'package:acha/core/utils/index.dart';
import 'package:acha/data/models/index.dart';

class ActivityContainer extends StatelessWidget {
  const ActivityContainer({
    super.key,
    required this.type,
    required this.available,
    required this.title,
    required this.course,
    required this.deadline,
    required this.link,
    this.margin,
    this.backgroundColor,
  });

  final ActivityType type;
  final bool available;
  final String title;
  final String course;
  final DateTime deadline;
  final String? link;
  final EdgeInsets? margin;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: margin,
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 12),
      decoration: BoxDecoration(
        border: Border.all(color: AchaColors.gray228_232_241),
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTitle(),
          _buildCourse(),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildDeadline(),
              _buildUri(),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildTitle() {
    return AutoSizeText(
      title,
      maxLines: 1,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AchaColors.gray60,
      ),
    );
  }

  Widget _buildCourse() {
    return Text(
      course,
      style: const TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w400,
        color: AchaColors.gray60,
      ),
    );
  }

  Widget _buildDeadline() {
    return Text.rich(
      TextSpan(
        style: const TextStyle(
          color: AchaColors.gray151,
        ),
        children: [
          TextSpan(
            text: deadline.toTimeLeftFormattedTime(),
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          const TextSpan(
            text: '까지',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildUri() {
    final access = available && link != null;
    final svgPath = type == ActivityType.lecture
        ? 'lib/assets/svgs/modal/main/lecture.svg'
        : 'lib/assets/svgs/modal/main/assignment.svg';
    final buttonText = type == ActivityType.lecture ? '강의 시청' : '과제 제출';

    return GestureDetector(
      onTap: () => UriLauncher.openActivityUri(link),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        decoration: BoxDecoration(
          border: Border.all(
            color: AchaColors.blue228_232_241,
          ),
          borderRadius: BorderRadius.circular(7),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              svgPath,
              colorFilter: !access
                  ? const ColorFilter.mode(AchaColors.gray186, BlendMode.srcIn)
                  : null,
            ),
            const SizedBox(width: 5),
            Text(
              buttonText,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: access ? AchaColors.gray60 : AchaColors.gray186,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
