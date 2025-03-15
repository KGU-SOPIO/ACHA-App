import 'package:flutter/material.dart';

import 'package:get_it/get_it.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:acha/core/constants/index.dart';
import 'package:acha/core/extensions/index.dart';
import 'package:acha/data/models/index.dart';
import 'package:acha/presentation/widgets/index.dart';

class CarouselActivityContainer extends StatelessWidget {
  const CarouselActivityContainer({
    super.key,
    required this.week,
    required this.activity,
  });

  final int week;
  final Activity activity;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 22),
      decoration: BoxDecoration(
        border: Border.all(
          color: AchaColors.gray237_239_242,
        ),
        color: AchaColors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Text(
              '$week주차',
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: AchaColors.gray30,
              ),
            ),
          ),
          GestureDetector(
            onTap: () => _openActivityUri(activity.link),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
              decoration: BoxDecoration(
                border: Border.all(
                  color: AchaColors.gray237_239_242,
                  width: 1.5,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  SvgPicture.asset(activity.type.svgPath),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      activity.title,
                      maxLines: 1,
                      overflow: TextOverflow.fade,
                      softWrap: false,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AchaColors.gray60,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _openActivityUri(String? link) async {
    if (link == null) {
      GetIt.I<ToastManager>().error(message: '활동이 비활성화 되어있어요');
      return;
    }

    try {
      final uri = Uri.parse(link);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri, mode: LaunchMode.externalApplication);
      }
    } catch (e) {
      GetIt.I<ToastManager>().error(message: 'LMS 페이지를 열지 못했어요');
    }
  }
}
