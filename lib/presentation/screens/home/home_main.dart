import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:carousel_slider/carousel_slider.dart';

import 'package:acha/core/constants/index.dart';
import 'package:acha/presentation/widgets/index.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();

  static Route<void> route() {
    return CupertinoPageRoute(builder: (context) => const HomeScreen());
  }
}

class _HomeScreenState extends State<HomeScreen> {
  final CarouselSliderController _carouselSliderController =
      CarouselSliderController();
  int currentSlide = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AchaColors.gray245_246_248,
      body: _buildBody(),
    );
  }

  /// 메인 위젯을 빌드합니다.
  Widget _buildBody() {
    return SafeArea(
      child: Stack(
        children: [
          _buildContent(),
          _buildBottomDraggableContainer(),
        ],
      ),
    );
  }

  /// 메인 컨텐츠를 빌드합니다.
  Widget _buildContent() {
    return SingleChildScrollView(
      child: Column(
        children: [
          const AchaAppbar(),
          const SizedBox(height: 20),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 26),
            color: AchaColors.gray245_246_248,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UserHeader(),
                SizedBox(height: 20),
                TodayCourseContainer(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// 드래그 가능한 하단 위젯을 빌드합니다.
  Widget _buildBottomDraggableContainer() {
    return BottomDraggableContainer(
      carouselSliderController: _carouselSliderController,
      currentSlide: currentSlide,
      onPageChanged: (index) => setState(() => currentSlide = index),
    );
  }
}
