import 'package:flutter/material.dart';

import 'package:get_it/get_it.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:auto_size_text/auto_size_text.dart';

import 'package:acha/core/constants/index.dart';
import 'package:acha/data/models/index.dart';
import 'package:acha/presentation/widgets/index.dart';

class ActivityContainer extends StatelessWidget {
  const ActivityContainer({
    super.key,
    required this.type,
    required this.title,
    required this.course,
    required this.deadline,
    required this.uri,
    this.margin,
    this.backgroundColor,
  });

  final ActivityType type;
  final String title;
  final String course;
  final String deadline;
  final Uri? uri;
  final EdgeInsets? margin;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: margin,
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 16),
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
          const SizedBox(height: 14),
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

  Future<void> _openActivityUri() async {
    if (uri == null) {
      GetIt.I<ToastManager>().error(message: 'LMS 링크를 불러오지 못했어요');
      return;
    }

    try {
      if (await canLaunchUrl(uri!)) {
        await launchUrl(uri!, mode: LaunchMode.externalApplication);
      }
    } catch (e) {
      GetIt.I<ToastManager>().error(message: 'LMS 페이지를 열지 못했어요');
    }
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
            text: deadline,
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
    final svgPath = type == ActivityType.lecture
        ? 'lib/assets/svgs/modal/main/lecture.svg'
        : 'lib/assets/svgs/modal/main/assignment.svg';
    final buttonText = type == ActivityType.lecture ? '강의 시청' : '과제 제출';

    return GestureDetector(
      onTap: () => _openActivityUri(),
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
            SvgPicture.asset(svgPath),
            const SizedBox(width: 5),
            Text(
              buttonText,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AchaColors.gray60,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
