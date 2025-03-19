import 'package:flutter/material.dart';

import 'package:skeletonizer/skeletonizer.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:acha/core/constants/index.dart';

class NoticeSkeletonContainer extends StatelessWidget {
  const NoticeSkeletonContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.only(left: 10, top: 18, bottom: 15),
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: AchaColors.gray228_232_241,
            ),
          ),
        ),
        child: Column(
          children: [
            _buildHeader(),
            const SizedBox(height: 20),
            _buildInformation(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return const Row(
      children: [
        Text('N', style: TextStyle(fontSize: 14)),
        SizedBox(width: 15),
        Text(
          'Skeleton_Skeleton',
          style: TextStyle(fontSize: 14),
        ),
      ],
    );
  }

  Widget _buildInformation() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SvgPicture.asset('lib/assets/svgs/notice/person.svg'),
        const SizedBox(width: 7),
        const Text('Skeleton', style: TextStyle(fontSize: 12)),
        const SizedBox(width: 20),
        SvgPicture.asset('lib/assets/svgs/notice/clock.svg'),
        const SizedBox(width: 7),
        const Text('Skeleton', style: TextStyle(fontSize: 12))
      ],
    );
  }
}
