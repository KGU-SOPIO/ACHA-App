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
              initialChildSize: 0.1,
              minChildSize: 0.1,
              maxChildSize: 0.78,
              snap: true,
              snapSizes: [
                0.1,
                0.78
              ],
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
            child: Stack(
              children: [
                CarouselSlider(
                  carouselController: _carouselSliderController,
                  options: CarouselOptions(
                    height: 520,
                    viewportFraction: 1,
                    enableInfiniteScroll: false,
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentSlide = index;
                      });
                    },
                  ),
                  items: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.only(left: 32, right: 32, top: 32),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                          Container(
                            margin: EdgeInsets.only(top: 18, bottom: 13),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(25, 0, 102, 255),
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 0, 102, 255),
                                    borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: Text(
                                    "D - Day",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: "Pretendard",
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 12, right: 16, top: 6, bottom: 6),
                                  child: Text(
                                    "10월 1일",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: "Pretendard",
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromARGB(255, 0, 102, 255)
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            margin: EdgeInsets.only(bottom: 13),
                            padding: EdgeInsets.symmetric(horizontal: 22, vertical: 16),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color.fromARGB(255, 228, 232, 241)
                              ),
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "1주차 강의",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: "Pretendard",
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 60, 60, 60)
                                  )
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 14),
                                  child: Text(
                                    "사고와 표현",
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: "Pretendard",
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255, 60, 60, 60)
                                    )
                                  )
                                ),
                                RichText(
                                  text: TextSpan(
                                    style: TextStyle(
                                      fontFamily: "Pretendard",
                                      color: Color.fromARGB(255, 151, 151, 151)
                                    ),
                                    children: [
                                      TextSpan(
                                        text: "오후 09:00",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500
                                        )
                                      ),
                                      TextSpan(
                                        text: "까지",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500
                                        )
                                      )
                                    ]
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            margin: EdgeInsets.only(bottom: 13),
                            padding: EdgeInsets.symmetric(horizontal: 22, vertical: 16),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color.fromARGB(255, 228, 232, 241)
                              ),
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "1주차 강의",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: "Pretendard",
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 60, 60, 60)
                                  )
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 14),
                                  child: Text(
                                    "사고와 표현",
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: "Pretendard",
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255, 60, 60, 60)
                                    )
                                  )
                                ),
                                RichText(
                                  text: TextSpan(
                                    style: TextStyle(
                                      fontFamily: "Pretendard",
                                      color: Color.fromARGB(255, 151, 151, 151)
                                    ),
                                    children: [
                                      TextSpan(
                                        text: "오후 09:00",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500
                                        )
                                      ),
                                      TextSpan(
                                        text: "까지",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500
                                        )
                                      )
                                    ]
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(horizontal: 22, vertical: 16),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color.fromARGB(255, 228, 232, 241)
                              ),
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "1주차 강의",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: "Pretendard",
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 60, 60, 60)
                                  )
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 14),
                                  child: Text(
                                    "사고와 표현",
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: "Pretendard",
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255, 60, 60, 60)
                                    )
                                  )
                                ),
                                RichText(
                                  text: TextSpan(
                                    style: TextStyle(
                                      fontFamily: "Pretendard",
                                      color: Color.fromARGB(255, 151, 151, 151)
                                    ),
                                    children: [
                                      TextSpan(
                                        text: "오후 09:00",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500
                                        )
                                      ),
                                      TextSpan(
                                        text: "까지",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500
                                        )
                                      )
                                    ]
                                  )
                                )
                              ]
                            )
                          )
                        ]
                      )
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 32),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                                        ]
                                      )
                                    )
                                  ),
                                  SvgPicture.asset("lib/assets/svgs/modal/main/list.svg")
                                ]
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
                                  ]
                                )
                              )
                            ]
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 18, bottom: 13),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(25, 0, 102, 255),
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 0, 102, 255),
                                    borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: Text(
                                    "D - Day",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: "Pretendard",
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 12, right: 16, top: 6, bottom: 6),
                                  child: Text(
                                    "10월 1일",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: "Pretendard",
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromARGB(255, 0, 102, 255)
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            margin: EdgeInsets.only(bottom: 13),
                            padding: EdgeInsets.symmetric(horizontal: 22, vertical: 16),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color.fromARGB(255, 228, 232, 241)
                              ),
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "1주차 강의",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: "Pretendard",
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 60, 60, 60)
                                  )
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 14),
                                  child: Text(
                                    "사고와 표현",
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: "Pretendard",
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255, 60, 60, 60)
                                    )
                                  )
                                ),
                                RichText(
                                  text: TextSpan(
                                    style: TextStyle(
                                      fontFamily: "Pretendard",
                                      color: Color.fromARGB(255, 151, 151, 151)
                                    ),
                                    children: [
                                      TextSpan(
                                        text: "오후 09:00",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500
                                        )
                                      ),
                                      TextSpan(
                                        text: "까지",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500
                                        )
                                      )
                                    ]
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            margin: EdgeInsets.only(bottom: 13),
                            padding: EdgeInsets.symmetric(horizontal: 22, vertical: 16),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color.fromARGB(255, 228, 232, 241)
                              ),
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "1주차 강의",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: "Pretendard",
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 60, 60, 60)
                                  )
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 14),
                                  child: Text(
                                    "사고와 표현",
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: "Pretendard",
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255, 60, 60, 60)
                                    )
                                  )
                                ),
                                RichText(
                                  text: TextSpan(
                                    style: TextStyle(
                                      fontFamily: "Pretendard",
                                      color: Color.fromARGB(255, 151, 151, 151)
                                    ),
                                    children: [
                                      TextSpan(
                                        text: "오후 09:00",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500
                                        )
                                      ),
                                      TextSpan(
                                        text: "까지",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500
                                        )
                                      )
                                    ]
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(horizontal: 22, vertical: 16),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color.fromARGB(255, 228, 232, 241)
                              ),
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "1주차 강의",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: "Pretendard",
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 60, 60, 60)
                                  )
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 14),
                                  child: Text(
                                    "사고와 표현",
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: "Pretendard",
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255, 60, 60, 60)
                                    )
                                  )
                                ),
                                RichText(
                                  text: TextSpan(
                                    style: TextStyle(
                                      fontFamily: "Pretendard",
                                      color: Color.fromARGB(255, 151, 151, 151)
                                    ),
                                    children: [
                                      TextSpan(
                                        text: "오후 09:00",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500
                                        )
                                      ),
                                      TextSpan(
                                        text: "까지",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500
                                        )
                                      )
                                    ]
                                  )
                                )
                              ]
                            )
                          )
                        ]
                      )
                    )
                  ]
                ),
                Positioned(
                  bottom: 20,
                  child: _buildCarouselIndicator()
                )
              ]
            )
          )
        );
      }
    );
  }

  Widget _buildCarouselIndicator() {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
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