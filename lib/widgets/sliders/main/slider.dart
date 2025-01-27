import 'package:flutter/material.dart';

import 'package:get_it/get_it.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:acha/models/index.dart';
import 'package:acha/blocs/navigation/navigation_bloc.dart';
import 'package:acha/blocs/activity/index.dart';

import 'package:acha/extensions/index.dart';

import 'package:acha/widgets/containers/index.dart';
import 'package:acha/widgets/sliders/index.dart';
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
    context.read<ActivityBloc>().add(ActivityEvent.fetch());
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return SingleChildScrollView(
          controller: widget.scrollController,
          physics: const ClampingScrollPhysics(),
          child: Stack(
            children: [
              CarouselSlider(
                carouselController: widget.carouselSliderController,
                options: CarouselOptions(
                  aspectRatio: 0.74,
                  viewportFraction: 1,
                  enableInfiniteScroll: false,
                  onPageChanged: (index, reason) => widget.onPageChanged(index)
                ),
                items: [
                  _buildLectureSection(context),
                  _buildAssignmentSection(context),
                ]
              ),
              Positioned(
                bottom: 20,
                child: CarouselIndicator(itemCount: 2, currentIndex: widget.currentSlide)
              )
            ]
          )
        );
      }
    );
  }

  Widget _buildLectureSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32, right: 32, top: 32),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text.rich(
                    const TextSpan(
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
                          text: '우선 강의',
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
          BlocConsumer<ActivityBloc, ActivityState>(
            listener: (context, state) {
              if (state.status == ActivityStatus.error) {
                GetIt.I<ToastManager>().error(message: state.errorMessage!);
              }
            },
            builder: (context, state) {
              if (state.status == ActivityStatus.loading) {
                return const Expanded(child: Center(child: Loader()));
              } else if (state.status == ActivityStatus.loaded) {
                Map<DateTime, List<Activity>> lectures = state.weekActivities?.getLectureActivities(group: true);
                
                if (lectures.isEmpty) {
                  return const Expanded(child: Center(child: Text('남은 강의가 없어요', style: TextStyle(fontSize: 15))));
                }

                return Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: lectures.length,
                    itemBuilder: (context, index) {
                      final entry = lectures.entries.elementAt(index);
                      final date = entry.key;
                      final activities = entry.value;
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DDayContainer(deadline: date),
                          const SizedBox(height: 13),
                          for (final lecture in activities)
                            ActivityContainer(
                              title: lecture.name!,
                              course: lecture.courseName!,
                              deadline: lecture.deadline!.toTimeLeftFormattedTime(),
                              margin: const EdgeInsets.only(bottom: 13)
                            ),
                          const SizedBox(height: 20),
                        ]
                      );
                    }
                  )
                );
              } else {
                return const Expanded(child: Center(child: Text('우선 강의를 불러오지 못했어요', style: TextStyle(fontSize: 15))));
              }
            }
          )
        ]
      )
    );
  }

  Widget _buildAssignmentSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32, right: 32, top: 32),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text.rich(
                    const TextSpan(
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
                          text: '우선 과제',
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
          BlocConsumer<ActivityBloc, ActivityState>(
            listener: (context, state) {
              if (state.status == ActivityStatus.error) {
                GetIt.I<ToastManager>().error(message: state.errorMessage!);
              }
            },
            builder: (context, state) {
              if (state.status == ActivityStatus.loading) {
                return const Expanded(child: Center(child: Loader()));
              } else if (state.status == ActivityStatus.loaded) {
                Map<DateTime, List<Activity>> assignments = state.weekActivities?.getAssignmentActivities(group: true);

                if (assignments.isEmpty) {
                  return const Expanded(child: Center(child: Text('남은 과제가 없어요', style: TextStyle(fontSize: 15))));
                }

                return Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: assignments.length,
                    itemBuilder: (context, index) {
                      final entry = assignments.entries.elementAt(index);
                      final date = entry.key;
                      final activities = entry.value;
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DDayContainer(deadline: date),
                          const SizedBox(height: 13),
                          for (final assignment in activities)
                            ActivityContainer(
                              title: assignment.name!,
                              course: assignment.courseName!,
                              deadline: assignment.deadline!.toTimeLeftFormattedTime(),
                              margin: const EdgeInsets.only(bottom: 13),
                            ),
                          const SizedBox(height: 20),
                        ]
                      );
                    }
                  )
                );
              } else {
                return const Expanded(child: Center(child: Text('우선 과제를 불러오지 못했어요', style: TextStyle(fontSize: 15))));
              }
            }
          )
        ]
      )
    );
  }
}