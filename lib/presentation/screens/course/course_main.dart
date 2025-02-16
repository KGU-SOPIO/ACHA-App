import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:get_it/get_it.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:stacked_list_carousel/stacked_list_carousel.dart';

import 'package:acha/core/extensions/index.dart';
import 'package:acha/data/models/index.dart';
import 'package:acha/domain/repositories/index.dart';
import 'package:acha/presentation/blocs/index.dart';
import 'package:acha/presentation/screens/index.dart';
import 'package:acha/presentation/widgets/index.dart';

class CourseMainScreen extends StatefulWidget {
  const CourseMainScreen({super.key});

  @override
  State<CourseMainScreen> createState() => _CourseMainScreenState();

  static Route<void> route({required Course course}) {
    return CupertinoPageRoute(
      builder: (context) => BlocProvider(
        create: (context) => CourseBloc(
          courseRepository: GetIt.I<CourseRepository>(),
          course: course,
        )..add(const CourseEvent.fetchCourseActivities()),
        child: const CourseMainScreen(),
      ),
    );
  }
}

class _CourseMainScreenState extends State<CourseMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: DecoratedBox(
          decoration:
              const BoxDecoration(color: Color.fromARGB(255, 245, 246, 248)),
          child: BlocBuilder<CourseBloc, CourseState>(
            builder: (context, state) {
              return ListView(
                physics: const ClampingScrollPhysics(),
                children: [
                  _buildCourseSection(context, state),
                  _buildActivitySection(state),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildCourseSection(BuildContext context, CourseState state) {
    return DecoratedBox(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
      child: ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          const AchaAppbar(backgroundColor: Colors.white),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26),
            child: Column(
              children: [
                _buildCourseHeader(state),
                const SizedBox(height: 25),
                _buildNoticeButton(context, state),
                const SizedBox(height: 27),
                _buildCarouselSection(context, state),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildCourseHeader(CourseState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          '${state.course.professor} 교수',
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color.fromARGB(255, 30, 30, 30),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          state.course.name,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: Color.fromARGB(255, 30, 30, 30),
          ),
        ),
      ],
    );
  }

  Widget _buildNoticeButton(BuildContext context, CourseState state) {
    return RowContainerButton(
      padding: const EdgeInsets.symmetric(vertical: 17),
      onPressed: () =>
          Navigator.push(context, NoticeScreen.route(course: state.course)),
      foregroundColor: Colors.white,
      backgroundColor: Colors.white,
      border: const BorderSide(color: Color.fromARGB(255, 0, 102, 255)),
      borderRadius: 20,
      text: '공지사항',
      textStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: Color.fromARGB(255, 0, 102, 255),
      ),
      widget: SvgPicture.asset('lib/assets/svgs/course/right_arrow.svg'),
    );
  }

  Widget _buildCarouselSection(BuildContext context, CourseState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            const Text.rich(
              TextSpan(
                style: TextStyle(
                    fontSize: 14, color: Color.fromARGB(255, 30, 30, 30)),
                children: [
                  TextSpan(
                    text: '주차별 ',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  TextSpan(
                    text: '학습 활동',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            const SizedBox(width: 5),
            SvgPicture.asset('lib/assets/svgs/course/course.svg')
          ],
        ),
        const SizedBox(height: 15),
        _buildCarouselContent(context, state),
      ],
    );
  }

  Widget _buildCarouselContent(BuildContext context, CourseState state) {
    if (state.status == CourseStatus.loading) {
      return _buildCarouselSkeleton();
    } else if (state.status == CourseStatus.loaded) {
      final courseActivities = state.course.courseActivities;
      final containers = courseActivities?.weekActivities.expand(
        (weekActivities) {
          final week = weekActivities.week;
          return weekActivities.activities.map((activity) =>
              CarouselActivityContainer(week: week!, activity: activity));
        },
      ).toList();

      if (containers != null) {
        return Container(
          height: 160,
          margin: const EdgeInsets.only(bottom: 5),
          child: StackedListCarousel(
            items: containers,
            behavior: CarouselBehavior.loop,
            cardBuilder: (context, item, size) => item,
            outermostCardHeightFactor: 0.9,
            itemGapHeightFactor: 0.03,
            cardAspectRatio: MediaQuery.of(context).size.width / 160,
            outermostCardAnimationDuration: const Duration(milliseconds: 200),
            autoSlideDuration: const Duration(seconds: 5),
          ),
        );
      } else {
        return const SizedBox(
          height: 160,
          child: Center(
            child: Text('등록된 활동이 없어요'),
          ),
        );
      }
    } else {
      return const SizedBox(
        height: 165,
        child: Center(
          child: Text(
            '활동을 불러오지 못했어요',
            style: TextStyle(fontSize: 15),
          ),
        ),
      );
    }
  }

  Widget _buildActivitySection(CourseState state) {
    if (state.status == CourseStatus.loading) {
      return _buildPanelSkeleton();
    } else if (state.status == CourseStatus.loaded) {
      if (state.course.courseActivities == null) {
        return const SizedBox.shrink();
      }
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 27),
        child: ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: state.course.courseActivities!.weekActivities.length,
          itemBuilder: (context, index) {
            final weekActivities =
                state.course.courseActivities!.weekActivities[index];
            return _buildExpansionPanel(weekActivities, index);
          },
        ),
      );
    } else {
      return const SizedBox.shrink();
    }
  }

  Widget _buildExpansionPanel(WeekActivities weekActivities, int index) {
    final allCompleted = weekActivities.activities
        .every((activity) => activity.attendance == true);

    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: ExpansionPanelList.radio(
          elevation: 0,
          expandedHeaderPadding: EdgeInsets.zero,
          children: [
            ExpansionPanelRadio(
              canTapOnHeader: true,
              value: '$index',
              headerBuilder: (context, isExpanded) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 7),
                  child: ListTile(
                    leading: Padding(
                      padding: const EdgeInsets.only(left: 4),
                      child: Icon(
                        Icons.circle,
                        size: 15,
                        color: allCompleted
                            ? const Color.fromARGB(255, 0, 102, 255)
                            : const Color.fromARGB(255, 255, 78, 107),
                      ),
                    ),
                    title: Text(
                      '${index + 1}주차',
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 60, 60, 60),
                      ),
                    ),
                  ),
                );
              },
              body: Column(
                children: [
                  const Divider(
                    height: 1,
                    color: Color.fromARGB(255, 245, 246, 248),
                  ),
                  ...weekActivities.activities.map(
                    (activity) {
                      return ListTile(
                        leading: SvgPicture.asset(activity.type.svgPath),
                        title: Text(
                          activity.name,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 60, 60, 60),
                          ),
                        ),
                      );
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildCarouselSkeleton() {
    return Container(
      height: 160,
      margin: const EdgeInsets.only(bottom: 5),
      child: StackedListCarousel(
        items: List.generate(
            3, (index) => const CarouselActivitySkeletonContainer()),
        disableAutomaticLoop: true,
        behavior: CarouselBehavior.loop,
        cardBuilder: (context, item, size) => item,
        outermostCardHeightFactor: 0.9,
        itemGapHeightFactor: 0.03,
        cardAspectRatio: MediaQuery.of(context).size.width / 160,
        outermostCardAnimationDuration: const Duration(milliseconds: 200),
      ),
    );
  }

  Widget _buildPanelSkeleton() {
    return Skeletonizer(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 27),
        child: Container(
          height: 70,
          padding: const EdgeInsets.only(left: 30),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Align(
            alignment: Alignment.centerLeft,
            child: Text('Skeleton_Skeleton'),
          ),
        ),
      ),
    );
  }
}
