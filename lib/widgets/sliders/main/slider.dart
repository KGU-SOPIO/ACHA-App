import 'package:flutter/material.dart';

import 'package:get_it/get_it.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:acha/blocs/navigation/navigation_bloc.dart';
import 'package:acha/blocs/priority_lecture/index.dart';
import 'package:acha/blocs/priority_assignment/index.dart';

import 'package:acha/extensions/index.dart';

import 'package:acha/widgets/containers/index.dart';
import 'package:acha/widgets/toast/toast_manager.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key, required this.scrollController, required this.carouselSliderController, required this.currentSlide, required this.onPageChanged});

  final ScrollController scrollController;
  final CarouselSliderController carouselSliderController;
  final int currentSlide;
  final ValueChanged<int> onPageChanged;

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  @override
  void initState() {
    super.initState();
    context.read<PriorityLectureBloc>().add(PriorityLectureEvent.fetch());
    context.read<PriorityAssignmentBloc>().add(PriorityAssignmentEvent.fetch());
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return SingleChildScrollView(
          controller: widget.scrollController,
          physics: const ClampingScrollPhysics(),
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: Stack(
              children: [
                // Carousel 슬라이더
                CarouselSlider(
                  carouselController: widget.carouselSliderController,
                  options: CarouselOptions(
                    height: 520,
                    viewportFraction: 1,
                    enableInfiniteScroll: false,
                    onPageChanged: (index, reason) {
                      widget.onPageChanged(index);
                    }
                  ),
                  items: [
                    _buildLectureSection(context),
                    _buildAssignmentSection(context),
                  ]
                ),
                Positioned(
                  bottom: 20,
                  child: CarouselIndicator(
                    itemCount: 2,
                    currentIndex: widget.currentSlide
                  )
                )
              ]
            )
          )
        );
      }
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
                        color: Color.fromARGB(255, 30, 30, 30),
                      ),
                      children: [
                        TextSpan(
                          text: '나의 ',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        TextSpan(
                          text: '우선강의',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        )
                      ]
                    )
                  ),
                  const SizedBox(width: 10),
                  SvgPicture.asset('lib/assets/svgs/modal/main/play.svg'),
                ]
              ),
              GestureDetector(
                onTap: () => context.read<NavigationBloc>().add(TabChanged(2)),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 6),
                      child: Text(
                        '전체보기',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 151, 151, 151),
                        )
                      )
                    ),
                    SvgPicture.asset('lib/assets/svgs/modal/main/right_arrow.svg'),
                  ]
                )
              )
            ]
          ),
          SizedBox(height: 18),
          BlocListener<PriorityLectureBloc, PriorityLectureState>(
            listener: (context, state) {
              if (state.status == PriorityLectureStatus.error) {
                GetIt.I<ToastManager>().error(message: state.message!);
              }
            },
            child: BlocBuilder<PriorityLectureBloc, PriorityLectureState>(
              builder: (context, state) {
                if (state.status == PriorityLectureStatus.loading) {
                  return const Expanded(child: Center(child: Loader()));
                } else if (state.status == PriorityLectureStatus.loaded) {
                  final lectures = state.priorityLectures!.lectures;
                  return Column(
                    children: [
                      DDayContainer(deadline: state.priorityLectures!.deadline!),
                      SizedBox(height: 13),
                      ...lectures!.map((lecture) =>
                        ActivityContainer(
                          title: lecture.title,
                          course: lecture.course,
                          deadline: lecture.deadline.toTimeLeftFormattedTime(),
                          margin: EdgeInsets.only(bottom: 13)
                        )
                      )
                    ]
                  );
                } else {
                  return const Expanded(child: Center(child: Text('우선 강의를 불러오지 못했어요')));
                }
              }
            )
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
                        color: Color.fromARGB(255, 30, 30, 30),
                      ),
                      children: [
                        TextSpan(
                          text: '나의 ',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        TextSpan(
                          text: '우선과제',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        )
                      ]
                    )
                  ),
                  const SizedBox(width: 10),
                  SvgPicture.asset('lib/assets/svgs/modal/main/list.svg'),
                ]
              ),
              GestureDetector(
                onTap: () => context.read<NavigationBloc>().add(TabChanged(2)),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 6),
                      child: Text(
                        '전체보기',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 151, 151, 151),
                        )
                      )
                    ),
                    SvgPicture.asset('lib/assets/svgs/modal/main/right_arrow.svg'),
                  ]
                )
              )
            ]
          ),
          SizedBox(height: 18),
          BlocListener<PriorityAssignmentBloc, PriorityAssignmentState>(
            listener: (context, state) {
              if (state.status == PriorityAssignmentStatus.error) {
                GetIt.I<ToastManager>().error(message: state.message!);
              }
            },
            child: BlocBuilder<PriorityAssignmentBloc, PriorityAssignmentState>(
              builder: (context, state) {
                if (state.status == PriorityAssignmentStatus.loading) {
                  return const Expanded(child: Center(child: Loader()));
                } else if (state.status == PriorityAssignmentStatus.loaded) {
                  final assignments = state.priorityAssignments!.assignments;
                  return Column(
                    children: [
                      DDayContainer(deadline: state.priorityAssignments!.deadline!),
                      SizedBox(height: 13),
                      ...assignments!.map((assignment) =>
                        ActivityContainer(
                          title: assignment.title,
                          course: assignment.course,
                          deadline: assignment.deadline.toTimeLeftFormattedTime(),
                          margin: EdgeInsets.only(bottom: 13)
                        )
                      )
                    ]
                  );
                } else {
                  return const Expanded(child: Center(child: Text('우선 과제를 불러오지 못했어요')));
                }
              }
            )
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