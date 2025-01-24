import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:carousel_slider/carousel_slider.dart';

import 'package:acha/widgets/containers/index.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();

  static Route<void> route() {
    return CupertinoPageRoute(builder: (context) => const MainScreen());
  }
}

class _MainScreenState extends State<MainScreen> {
  final CarouselSliderController _carouselSliderController = CarouselSliderController();
  int currentSlide = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 246, 248),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  AchaAppbar(),
                  const SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 26),
                    color: Color.fromARGB(255, 245, 246, 248),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        UserHeader(),
                        const SizedBox(height: 20),
                        TodayCourseContainer()
                      ]
                    )
                  )
                ]
              )
            ),
            BottomDraggableContainer(
              carouselSliderController: _carouselSliderController,
              currentSlide: currentSlide,
              onPageChanged: (index) => setState(() => currentSlide = index)
            )
          ]
        )
      )
    );
  }
}