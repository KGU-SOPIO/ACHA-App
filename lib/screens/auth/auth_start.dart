import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:acha/screens/auth/index.dart';

import 'package:acha/widgets/buttons/index.dart';
import 'package:acha/widgets/sliders/index.dart';

class AuthStartScreen extends StatefulWidget {
  const AuthStartScreen({super.key});

  static Route<void> route() {
    return CupertinoPageRoute(builder: (context) => const AuthStartScreen());
  }

  @override
  State<AuthStartScreen> createState() => _AuthStartScreenState();
}

class _AuthStartScreenState extends State<AuthStartScreen> {
  final CarouselSliderController _carouselSliderController = CarouselSliderController();
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
            const SizedBox(height: 20)
          ]
        )
      )
    );
  }

  Widget _buildContent() {
    return Expanded(
      child: Center(
        child: Column(
            children: [
              _buildCarouselSlider(),
              CarouselIndicator(itemCount: 3, currentIndex: currentSlide)
            ],
          )
      )
    );
  }

  Widget _buildCarouselSlider() {
    return CarouselSlider(
      carouselController: _carouselSliderController,
      options: CarouselOptions(
        height: MediaQuery.of(context).size.height - 300,
        viewportFraction: 1,
        enableInfiniteScroll: true,
        onPageChanged: (index, reason) => setState(() => currentSlide = index)
      ),
      items: [
        _buildFirstCarouselItem(),
        _buildSecondCarouselItem(),
        _buildThirdCarouselItem()
      ],
    );
  }

  Widget _buildFirstCarouselItem() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 180,
          child: Image.asset('lib/assets/images/auth/surprised.png', height: 180)
        ),
        const SizedBox(height: 35),
        Text.rich(
          TextSpan(
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Color.fromARGB(255, 0, 102, 255)
            ),
            children: [
              TextSpan(
                text: '너 ',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 30, 30, 30)
                )
              ),
              TextSpan(text: '과제 제출함?')
            ]
          )
        )
      ]
    );
  }
  
  Widget _buildSecondCarouselItem() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 180,
          child: Image.asset('lib/assets/images/auth/calendar.png', height: 180)
        ),
        const SizedBox(height: 35),
        Text.rich(
          textAlign: TextAlign.center,
          TextSpan(
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
            children: [
              TextSpan(
                text: '곧 다가올 마감일,\n',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 30, 30, 30)
                )
              ),
              TextSpan(
                text: '잊어버리시진 않으셨나요?',
                style: TextStyle(
                  height: 1.7,
                  color: Color.fromARGB(255, 0, 102, 255)
                )
              )
            ]
          )
        )
      ]
    );
  }

  Widget _buildThirdCarouselItem() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 180,
          child: SvgPicture.asset('lib/assets/svgs/acha_large.svg')
        ),
        const SizedBox(height: 35),
        Text.rich(
          textAlign: TextAlign.center,
          TextSpan(
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
            children: [
              TextSpan(
                text: '아차!\n',
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 102, 255)
                )
              ),
              TextSpan(
                text: '이젠 놓치지 마세요',
                style: TextStyle(
                  height: 1.7,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 30, 30, 30)
                )
              )
            ]
          )
        )
      ]
    );
  }

  Widget _buildButton() {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ContainerButton(
        height: 56,
        text: '지금 시작하기',
        textStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: Colors.white
        ),
        backgroundColor: const Color.fromARGB(255, 0, 102, 255),
        onPressed: () => Navigator.push(context, AuthStudentIdScreen.route())
      )
    );
  }
}