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
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                CarouselSlider(
                  carouselController: _carouselSliderController,
                  options: CarouselOptions(
                    height: MediaQuery.of(context).size.height - 300,
                    viewportFraction: 1,
                    enableInfiniteScroll: true,
                    onPageChanged: (index, reason) => setState(() {
                      currentSlide = index;
                    })
                  ),
                  items: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 180,
                          child: Image.asset('lib/assets/images/auth/surprised.png', height: 180)
                        ),
                        const SizedBox(height: 35),
                        RichText(
                          text: TextSpan(
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
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 180,
                          child: Image.asset('lib/assets/images/auth/calendar.png', height: 180)
                        ),
                        const SizedBox(height: 35),
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
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
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 180,
                          child: SvgPicture.asset('lib/assets/images/auth/acha.svg')
                        ),
                        const SizedBox(height: 35),
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
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
                      ],
                    )
                  ],
                ),
                CarouselIndicator(itemCount: 3, currentIndex: currentSlide)
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
              child: ContainerButton(
                height: 56,
                onPressed: () => Navigator.push(context, AuthStudentIdScreen.route()),
                backgroundColor: const Color.fromARGB(255, 0, 102, 255),
                text: '지금 시작하기',
                textStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.white
                )
              )
            )
          ]
        )
      )
    );
  }
}