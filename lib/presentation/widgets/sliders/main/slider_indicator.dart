import 'package:flutter/material.dart';

import 'package:acha/core/constants/index.dart';

class CarouselIndicator extends StatelessWidget {
  const CarouselIndicator({
    super.key,
    required this.itemCount,
    required this.currentIndex,
  });

  final int itemCount;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 8),
      decoration: BoxDecoration(
        color: AchaColors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: AchaColors.gray131.withValues(alpha: 0.18),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(
          itemCount,
          (index) => _buildIndicator(index),
        ),
      ),
    );
  }

  Widget _buildIndicator(int index) {
    final isActive = currentIndex == index;
    return Container(
      width: 7,
      height: 7,
      margin: const EdgeInsets.symmetric(horizontal: 3),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? AchaColors.primaryBlue : AchaColors.gray182,
      ),
    );
  }
}
