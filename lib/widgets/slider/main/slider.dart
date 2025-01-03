import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:acha/blocs/navigation/navigation_bloc.dart';

import 'package:acha/widgets/container/d_day_container.dart';
import 'package:acha/widgets/container/main/activity_container.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({super.key, required this.scrollController, required this.carouselSliderController, required this.currentSlide, required this.onPageChanged});

  final ScrollController scrollController;
  final CarouselSliderController carouselSliderController;
  final int currentSlide;
  final ValueChanged<int> onPageChanged;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return SingleChildScrollView(
          controller: scrollController,
          physics: const ClampingScrollPhysics(),
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: Stack(
              children: [
                // Carousel 슬라이더
                CarouselSlider(
                  carouselController: carouselSliderController,
                  options: CarouselOptions(
                    height: 520,
                    viewportFraction: 1,
                    enableInfiniteScroll: false,
                    onPageChanged: (index, reason) {
                      onPageChanged(index);
                    },
                  ),
                  items: [
                    _buildLectureSection(context),
                    _buildAssignmentSection(context),
                  ],
                ),
                Positioned(
                  bottom: 20,
                  child: CarouselIndicator(
                    itemCount: 2,
                    currentIndex: currentSlide
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildLectureSection(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(left: 32, right: 32, top: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: "Pretendard",
                        color: Color.fromARGB(255, 30, 30, 30),
                      ),
                      children: [
                        TextSpan(
                          text: "나의 ",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        TextSpan(
                          text: "우선강의",
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  SvgPicture.asset("lib/assets/svgs/modal/main/play.svg"),
                ],
              ),
              GestureDetector(
                onTap: () => context.read<NavigationBloc>().add(TabChanged(2)),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 6),
                      child: Text(
                        "전체보기",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: "Pretendard",
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 151, 151, 151),
                        ),
                      ),
                    ),
                    SvgPicture.asset("lib/assets/svgs/modal/main/right_arrow.svg"),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 18),
          DDayContainer(deadline: DateTime.now()),
          SizedBox(height: 13),
          const ActivityContainer(
            title: "1주차 강의",
            course: "사고와 표현",
            deadline: "오후 09:00",
          ),
          const SizedBox(height: 13),
          const ActivityContainer(
            title: "1주차 강의",
            course: "사고와 표현",
            deadline: "오후 09:00",
          ),
          const SizedBox(height: 13),
          const ActivityContainer(
            title: "1주차 강의",
            course: "사고와 표현",
            deadline: "오후 09:00",
          )
        ]
      )
    );
  }

  Widget _buildAssignmentSection(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: "Pretendard",
                        color: Color.fromARGB(255, 30, 30, 30),
                      ),
                      children: [
                        TextSpan(
                          text: "나의 ",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        TextSpan(
                          text: "우선과제",
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  SvgPicture.asset("lib/assets/svgs/modal/main/list.svg"),
                ],
              ),
              GestureDetector(
                onTap: () => context.read<NavigationBloc>().add(TabChanged(2)),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 6),
                      child: Text(
                        "전체보기",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: "Pretendard",
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 151, 151, 151),
                        ),
                      ),
                    ),
                    SvgPicture.asset("lib/assets/svgs/modal/main/right_arrow.svg"),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 18),
          DDayContainer(deadline: DateTime.now()),
          SizedBox(height: 13),
          const ActivityContainer(
            title: "1주차 강의",
            course: "사고와 표현",
            deadline: "오후 09:00",
          ),
          const SizedBox(height: 13),
          const ActivityContainer(
            title: "1주차 강의",
            course: "사고와 표현",
            deadline: "오후 09:00",
          ),
          const SizedBox(height: 13),
          const ActivityContainer(
            title: "1주차 강의",
            course: "사고와 표현",
            deadline: "오후 09:00",
          )
        ]
      )
    );
  }
}

class CarouselIndicator extends StatelessWidget {
  const CarouselIndicator({super.key, required this.itemCount, required this.currentIndex});

  final int itemCount;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(itemCount, (index) {
          final isActive = currentIndex == index;
          return Container(
            width: 8,
            height: 8,
            margin: const EdgeInsets.symmetric(horizontal: 4),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isActive ? Color.fromARGB(255, 0, 102, 255) : Color.fromARGB(255, 182, 182, 182)
            )
          );
        })
      )
    );
  }
}