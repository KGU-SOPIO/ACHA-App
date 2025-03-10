import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:acha/core/constants/index.dart';
import 'package:acha/presentation/screens/index.dart';
import 'package:acha/presentation/widgets/index.dart';

class AuthStartScreen extends StatefulWidget {
  const AuthStartScreen({super.key});

  static Route<void> route() {
    return CupertinoPageRoute(builder: (context) => const AuthStartScreen());
  }

  @override
  State<AuthStartScreen> createState() => _AuthStartScreenState();
}

class _AuthStartScreenState extends State<AuthStartScreen> {
  final CarouselSliderController _carouselSliderController =
      CarouselSliderController();
  int currentSlide = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            _buildContent(),
            _buildButton(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildContent() {
    return Expanded(
      child: Center(
        child: Column(
          children: [
            _buildCarouselSlider(),
            CarouselIndicator(
              itemCount: 3,
              currentIndex: currentSlide,
            )
          ],
        ),
      ),
    );
  }

  Widget _buildCarouselSlider() {
    return CarouselSlider(
      carouselController: _carouselSliderController,
      options: CarouselOptions(
        height: MediaQuery.of(context).size.height - 300,
        viewportFraction: 1,
        enableInfiniteScroll: true,
        onPageChanged: (index, reason) => setState(() => currentSlide = index),
      ),
      items: [
        _buildCarouselItem(
          path: 'lib/assets/images/auth/surprised.png',
          isSvg: false,
          textSpans: const [
            TextSpan(
              text: '너 ',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: AchaColors.gray30,
              ),
            ),
            TextSpan(text: '과제 제출함?'),
          ],
          textStyle: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: AchaColors.primaryBlue,
          ),
        ),
        _buildCarouselItem(
          path: 'lib/assets/images/auth/calendar.png',
          isSvg: false,
          textSpans: const [
            TextSpan(
              text: '곧 다가올 마감일,\n',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: AchaColors.gray30,
              ),
            ),
            TextSpan(
              text: '잊어버리시진 않으셨나요?',
              style: TextStyle(
                height: 1.7,
                color: AchaColors.primaryBlue,
              ),
            ),
          ],
          textStyle: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        _buildCarouselItem(
          path: 'lib/assets/svgs/acha/medium.svg',
          isSvg: true,
          textSpans: const [
            TextSpan(
              text: '아차!\n',
              style: TextStyle(
                color: AchaColors.primaryBlue,
              ),
            ),
            TextSpan(
              text: '이젠 놓치지 마세요',
              style: TextStyle(
                height: 1.7,
                fontWeight: FontWeight.w500,
                color: AchaColors.gray30,
              ),
            ),
          ],
          textStyle: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }

  Widget _buildCarouselItem({
    required bool isSvg,
    required String path,
    required List<TextSpan> textSpans,
    TextStyle? textStyle,
  }) {
    final imageWidget =
        isSvg ? SvgPicture.asset(path) : Image.asset(path, height: 180);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 180,
          child: imageWidget,
        ),
        const SizedBox(height: 35),
        Text.rich(
          textAlign: TextAlign.center,
          TextSpan(
            style: textStyle,
            children: textSpans,
          ),
        )
      ],
    );
  }

  Widget _buildButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: ContainerButton(
        height: 56,
        text: '지금 시작하기',
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: AchaColors.white,
        ),
        backgroundColor: AchaColors.primaryBlue,
        onPressed: () => Navigator.push(context, AuthStudentIdScreen.route()),
      ),
    );
  }
}
