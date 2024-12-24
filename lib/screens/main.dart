import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:acha/blocs/navigation/navigation_bloc.dart';

import 'package:acha/widgets/container/user_header.dart';
import 'package:acha/widgets/container/appbar/acha_appbar.dart';
import 'package:acha/widgets/container/main/today_course_container.dart';

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
                  ),
                ]
              )
            ),
            DraggableScrollableSheet(
              initialChildSize: 0.12,
              minChildSize: 0.12,
              maxChildSize: 0.8,
              builder: (BuildContext context, ScrollController scrollController) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0XFF000066).withValues(alpha: 0.03),
                        blurRadius: 15,
                        spreadRadius: 10,
                        offset: const Offset(0, 10)
                      ),
                      BoxShadow(
                        color: Color(0XFF000066).withValues(alpha: 0.0165),
                        blurRadius: 7.5,
                        spreadRadius: 5,
                        offset: const Offset(0, 5)
                      ),
                      BoxShadow(
                        color: Color(0XFF000066).withValues(alpha: 0.0095),
                        blurRadius: 5,
                        spreadRadius: 2.5,
                        offset: const Offset(0, 2.5)
                      ),
                    ]
                  ),
                  child: Stack(
                    children: [
                      IgnorePointer(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 12),
                              height: 6,
                              width: 79,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 228, 232, 241),
                                borderRadius: BorderRadius.circular(7)
                              )
                            )
                          ],
                        ),
                      ),
                      sliderWidget(scrollController: scrollController)
                    ],
                  )
                );
              },
            )
          ],
        ),
      )
    );
  }

  Widget sliderWidget({required ScrollController scrollController}) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return SingleChildScrollView(
          controller: scrollController,
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: constraints.maxHeight,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CarouselSlider(
                  carouselController: _carouselSliderController,
                  items: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 32),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 10),
                                    child: RichText(
                                      text: TextSpan(
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: "Pretendard",
                                          color: Color.fromARGB(255, 30, 30, 30)
                                        ),
                                        children: [
                                          TextSpan(
                                            text: "나의 ",
                                            style: TextStyle(fontWeight: FontWeight.w500)
                                          ),
                                          TextSpan(
                                            text: "우선강의",
                                            style: TextStyle(fontWeight: FontWeight.w700)
                                          )
                                        ]
                                      ),
                                    ),
                                  ),
                                  SvgPicture.asset("lib/assets/svgs/modal/main/play.svg")
                                ],
                              ),
                              GestureDetector(
                                onTap: () => context.read<NavigationBloc>().add(TabChanged(2)),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(right: 6),
                                      child: Text(
                                        "전체보기",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: "Pretendard",
                                          fontWeight: FontWeight.w500,
                                          color: Color.fromARGB(255, 151, 151, 151)
                                        ),
                                      ),
                                    ),
                                    SvgPicture.asset(
                                      "lib/assets/svgs/modal/main/right_arrow.svg",
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 32),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 10),
                                    child: RichText(
                                      text: TextSpan(
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: "Pretendard",
                                          color: Color.fromARGB(255, 30, 30, 30)
                                        ),
                                        children: [
                                          TextSpan(
                                            text: "나의 ",
                                            style: TextStyle(fontWeight: FontWeight.w500)
                                          ),
                                          TextSpan(
                                            text: "우선과제",
                                            style: TextStyle(fontWeight: FontWeight.w700)
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  SvgPicture.asset("lib/assets/svgs/modal/main/list.svg")
                                ],
                              ),
                              GestureDetector(
                                onTap: () => context.read<NavigationBloc>().add(TabChanged(2)),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(right: 6),
                                      child: Text(
                                        "전체보기",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: "Pretendard",
                                          fontWeight: FontWeight.w500,
                                          color: Color.fromARGB(255, 151, 151, 151)
                                        ),
                                      ),
                                    ),
                                    SvgPicture.asset(
                                      "lib/assets/svgs/modal/main/right_arrow.svg",
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                  options: CarouselOptions(
                    viewportFraction: 1.0,
                    enableInfiniteScroll: false,
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentSlide = index;
                      });
                    },
                  ),
                ),
                sliderIndicator(),
              ]
            )
          )
        );
      }
    );
  }


  Widget sliderIndicator() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(2, (index) {
          return GestureDetector(
            onTap: () => _carouselSliderController.animateToPage(index),
            child: Container(
              width: 8,
              height: 8,
              margin: const EdgeInsets.symmetric(horizontal: 2),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: currentSlide == index ? Color.fromARGB(255, 0, 102, 255) : Color.fromARGB(255, 182, 182, 182)
              )
            )
          );
        })
      )
    );
  }
}