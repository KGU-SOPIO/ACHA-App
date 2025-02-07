import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import 'package:skeletonizer/skeletonizer.dart';

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
          border: Border.all(
            color: const Color.fromARGB(255, 237, 239, 242)
          ),
          color: Colors.white,
          borderRadius: BorderRadius.circular(25)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTitle(),
            const SizedBox(height: 12),
            _buildPanel()
          ]
        )
      )
    );
  }

  Widget _buildTitle() {
    return Text(
      'Skeleton',
      style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w700,
        color: Color.fromARGB(255, 30, 30, 30)
      )
    );
  }

  Widget _buildPanel() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
      decoration: BoxDecoration(
        border: Border.all(
          color: Color.fromARGB(255, 237, 239, 242),
          width: 1.5
        ),
        borderRadius: BorderRadius.circular(12)
      ),
      child: Row(
        children: [
          SvgPicture.asset('lib/assets/svgs/course/lecture.svg'),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              'Skeleton_Skeleton',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 60, 60, 60)
              )
            )
          )
        ]
      )
    );
  }
}