import 'package:flutter/material.dart';

import 'package:get_it/get_it.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:acha/core/constants/index.dart';
import 'package:acha/core/extensions/index.dart';
import 'package:acha/data/models/index.dart';
import 'package:acha/presentation/blocs/index.dart';
import 'package:acha/presentation/widgets/index.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({
    super.key,
    required this.scrollController,
    required this.carouselSliderController,
    required this.currentSlide,
    required this.onPageChanged,
  });

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
    context.read<ActivityBloc>().add(const ActivityEvent.fetchActivities());
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
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
                  onPageChanged: (index, reason) => widget.onPageChanged(index),
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
                  currentIndex: widget.currentSlide,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildLectureSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32, right: 32, top: 32),
      child: Column(
        children: [
          _buildSectionTitle(
            title: '우선 강의',
            iconPath: 'lib/assets/svgs/modal/main/play.svg',
          ),
          const SizedBox(height: 18),
          _buildActivityBlocConsumer(
            loadedBuilder: (state) {
              final weekActivities = state.weekActivities;
              final lectures = weekActivities?.getLectureActivities(
                group: true,
              );
              return _buildLectureList(
                lectures: lectures,
                notExistMessage: '남은 강의가 없어요',
              );
            },
            errorMessage: '우선 강의를 불러오지 못했어요',
          ),
        ],
      ),
    );
  }

  Widget _buildAssignmentSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32, right: 32, top: 32),
      child: Column(
        children: [
          _buildSectionTitle(
            title: '우선 과제',
            iconPath: 'lib/assets/svgs/modal/main/list.svg',
          ),
          const SizedBox(height: 18),
          _buildActivityBlocConsumer(
            loadedBuilder: (state) {
              final weekActivities = state.weekActivities;
              final assignments = weekActivities?.getAssignmentActivities(
                group: true,
              );
              return _buildAssignmentList(
                assignments: assignments,
                notExistMessage: '남은 과제가 없어요',
              );
            },
            errorMessage: '우선 과제를 불러오지 못했어요',
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle({required String title, required String iconPath}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text.rich(
              TextSpan(
                style: const TextStyle(
                  fontSize: 16,
                  color: AchaColors.gray30,
                ),
                children: [
                  const TextSpan(
                    text: '나의 ',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextSpan(
                    text: title,
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            SvgPicture.asset(iconPath),
          ],
        ),
        GestureDetector(
          onTap: () => context.read<NavigationBloc>().add(const ChangeTab(2)),
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 6),
                child: Text(
                  '전체보기',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AchaColors.gray151,
                  ),
                ),
              ),
              SvgPicture.asset('lib/assets/svgs/modal/main/right_arrow.svg'),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildActivityBlocConsumer({
    required Widget Function(ActivityState state) loadedBuilder,
    required String errorMessage,
  }) {
    return BlocConsumer<ActivityBloc, ActivityState>(
      listener: (context, state) {
        if (state.status == ActivityStatus.error) {
          GetIt.I<ToastManager>().error(message: state.errorMessage!);
        }
      },
      builder: (context, state) {
        if (state.status == ActivityStatus.loading) {
          return const Expanded(child: Loader());
        } else if (state.status == ActivityStatus.loaded) {
          return loadedBuilder(state);
        } else {
          return Expanded(
            child: Center(
              child: Text(
                errorMessage,
                style: const TextStyle(
                  fontSize: 15,
                  color: AchaColors.gray109,
                ),
              ),
            ),
          );
        }
      },
    );
  }

  Widget _buildLectureList(
      {required Map<DateTime, List<Activity>>? lectures,
      required String notExistMessage}) {
    if (lectures == null) {
      return Expanded(
        child: Center(
          child: Text(
            notExistMessage,
            style: const TextStyle(fontSize: 15),
          ),
        ),
      );
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
                  type: lecture.type,
                  title: lecture.name,
                  course: lecture.courseName!,
                  deadline: lecture.deadline!.toTimeLeftFormattedTime(),
                  uri: Uri.tryParse(lecture.link),
                  margin: const EdgeInsets.only(bottom: 13),
                ),
              const SizedBox(height: 20),
            ],
          );
        },
      ),
    );
  }

  Widget _buildAssignmentList({
    required Map<DateTime, List<Activity>>? assignments,
    required String notExistMessage,
  }) {
    if (assignments == null) {
      return Expanded(
        child: Center(
          child: Text(
            notExistMessage,
            style: const TextStyle(fontSize: 15),
          ),
        ),
      );
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
                  type: assignment.type,
                  title: assignment.name,
                  course: assignment.courseName!,
                  deadline: assignment.deadline!.toTimeLeftFormattedTime(),
                  uri: Uri.tryParse(assignment.link),
                  margin: const EdgeInsets.only(bottom: 13),
                ),
              const SizedBox(height: 20),
            ],
          );
        },
      ),
    );
  }
}
