import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';

import 'package:acha/widgets/containers/index.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();

  static Route<void> route() {
    return MaterialPageRoute(builder: (context) => const MainScreen());
  }
}

class _MainScreenState extends State<MainScreen> {
  final CarouselSliderController _carouselSliderController = CarouselSliderController();
  int currentSlide = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 246, 248),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: AchaAppbar()
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(horizontal: 26),
                    color: Color.fromARGB(255, 245, 246, 248),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        UserHeader(bottomMargin: 20),
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
              onPageChanged: (index) {
                setState(() => currentSlide = index);
              }
            )
          ]
        )
      )
    );
  }
}