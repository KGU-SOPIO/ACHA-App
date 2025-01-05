import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';

import 'package:acha/widgets/sliders/index.dart';

class BottomDraggableContainer extends StatelessWidget {
  const BottomDraggableContainer({super.key, required this.carouselSliderController, required this.currentSlide, required this.onPageChanged});

  final CarouselSliderController carouselSliderController;
  final int currentSlide;
  final ValueChanged<int> onPageChanged;

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.1,
      minChildSize: 0.1,
      maxChildSize: 0.78,
      snap: true,
      snapSizes: const [0.1, 0.78],
      builder: (context, scrollController) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
            color: Colors.white,
            boxShadow: [
              // 원하는 대로 Shadow를 정의하세요
              BoxShadow(
                color: const Color(0XFF000066).withValues(alpha: 0.03),
                blurRadius: 15,
                spreadRadius: 10,
                offset: const Offset(0, 10),
              ),
              BoxShadow(
                color: const Color(0XFF000066).withValues(alpha: 0.0165),
                blurRadius: 7.5,
                spreadRadius: 5,
                offset: const Offset(0, 5),
              ),
              BoxShadow(
                color: const Color(0XFF000066).withValues(alpha: 0.0095),
                blurRadius: 5,
                spreadRadius: 2.5,
                offset: const Offset(0, 2.5),
              ),
            ],
          ),
          child: Stack(
            children: [
              IgnorePointer(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 12),
                      height: 6,
                      width: 79,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 228, 232, 241),
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                  ],
                ),
              ),
              SliderWidget(
                scrollController: scrollController,
                carouselSliderController: carouselSliderController,
                currentSlide: currentSlide,
                onPageChanged: onPageChanged,
              )
            ],
          ),
        );
      },
    );
  }
}