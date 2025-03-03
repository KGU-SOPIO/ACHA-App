import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:skeletonizer/skeletonizer.dart';

import 'package:acha/core/constants/index.dart';

class CarouselActivitySkeletonContainer extends StatelessWidget {
  const CarouselActivitySkeletonContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: true,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 22),
        decoration: BoxDecoration(
          border: Border.all(color: AchaColors.gray237_239_242),
          color: AchaColors.white,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTitle(),
            const SizedBox(height: 12),
            _buildPanel(),
          ],
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return const Text(
      'Skeleton',
      style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w700,
        color: AchaColors.gray30,
      ),
    );
  }

  Widget _buildPanel() {
    return Container(
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
          SvgPicture.asset('lib/assets/svgs/course/lecture.svg'),
          const SizedBox(width: 10),
          const Expanded(
            child: Text(
              'Skeleton_Skeleton',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AchaColors.gray60,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
