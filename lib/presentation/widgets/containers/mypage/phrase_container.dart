import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import 'package:acha/core/constants/index.dart';

class PhraseContainer extends StatelessWidget {
  const PhraseContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      decoration: BoxDecoration(
        border: Border.all(
          color: AchaColors.gray186,
        ),
        borderRadius: BorderRadius.circular(25),
        color: AchaColors.gray237_239_242,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTitle(),
          const SizedBox(height: 15),
          _buildPhraseContainer(),
        ],
      ),
    );
  }

  Widget _buildTitle() {
    return const Text.rich(
      TextSpan(
        style: TextStyle(fontSize: 16, color: AchaColors.gray30),
        children: [
          TextSpan(
            text: '오늘의 ',
            style: TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
          TextSpan(
            text: '문구',
            style: TextStyle(
              fontWeight: FontWeight.w700,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildPhraseContainer() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Center(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: SvgPicture.asset('lib/assets/svgs/mypage/left.svg'),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: SvgPicture.asset('lib/assets/svgs/mypage/right.svg'),
            ),
            _buildPhrase(),
          ],
        ),
      ),
    );
  }

  Widget _buildPhrase() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      child: const Text(
        '평범하게 살고 싶지 않은데\n왜 평범하게 노력하는가?',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: AchaColors.primaryBlue,
        ),
      ),
    );
  }
}
