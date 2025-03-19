import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:get_it/get_it.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:stacked_list_carousel/stacked_list_carousel.dart';

import 'package:acha/core/constants/index.dart';
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
          decoration: const BoxDecoration(color: AchaColors.gray245_246_248),
          child: BlocBuilder<CourseBloc, CourseState>(
            builder: (context, state) {
              return CustomScrollView(
                physics: const ClampingScrollPhysics(),
                slivers: [
                  SliverToBoxAdapter(
                    child: _buildCourseSection(context, state),
                  ),
                  SliverToBoxAdapter(
                    child: _buildActivitySection(state),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Future<void> _openActivityUri(String? link) async {
    if (link == null) {
      GetIt.I<ToastManager>().error(message: '활동이 비활성화 되어있어요');
      return;
    }

    try {
      final uri = Uri.parse(link);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri, mode: LaunchMode.externalApplication);
      }
    } catch (e) {
      GetIt.I<ToastManager>().error(message: 'LMS 페이지를 열지 못했어요');
    }
  }

  Widget _buildCourseSection(BuildContext context, CourseState state) {
    return Container(
      decoration: const BoxDecoration(
        color: AchaColors.white,
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(30),
        ),
      ),
      child: ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          const AchaAppbar(backgroundColor: AchaColors.white),
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
            color: AchaColors.gray30,
          ),
        ),
        const SizedBox(height: 5),
        AutoSizeText(
          state.course.title,
          maxLines: 1,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: AchaColors.gray30,
          ),
        ),
      ],
    );
  }

  Widget _buildNoticeButton(BuildContext context, CourseState state) {
    return RowContainerButton(
      padding: const EdgeInsets.symmetric(vertical: 17),
      onPressed: () => Navigator.push(
        context,
        NoticeScreen.route(course: state.course),
      ),
      foregroundColor: AchaColors.white,
      backgroundColor: AchaColors.white,
      border: const BorderSide(
        color: AchaColors.primaryBlue,
      ),
      borderRadius: 20,
      text: '공지사항',
      textStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: AchaColors.primaryBlue,
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
                  fontSize: 14,
                  color: AchaColors.gray30,
                ),
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
      final activityList = state.course.courseActivityList!.contents;
      final containers = activityList.expand((weekActivities) {
        final week = weekActivities.week!;
        return weekActivities.contents
            .where((activity) =>
                activity.type == ActivityType.lecture ||
                activity.type == ActivityType.assignment)
            .map((activity) =>
                CarouselActivityContainer(week: week, activity: activity));
      }).toList();

      if (containers.isEmpty) {
        return const SizedBox(
          height: 160,
          child: Center(
            child: Text(
              '등록된 활동이 없어요',
              style: TextStyle(
                fontSize: 15,
                color: AchaColors.gray109,
              ),
            ),
          ),
        );
      } else {
        return SizedBox(
          height: 140,
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
      }
    } else {
      return const SizedBox(
        height: 165,
        child: Center(
          child: Text(
            '활동을 불러오지 못했어요',
            style: TextStyle(
              fontSize: 15,
              color: AchaColors.gray109,
            ),
          ),
        ),
      );
    }
  }

  Widget _buildActivitySection(CourseState state) {
    if (state.status == CourseStatus.loading) {
      return _buildPanelSkeleton();
    } else if (state.status == CourseStatus.loaded) {
      final activityList = state.course.courseActivityList!.contents;
      if (activityList.isEmpty) {
        return const SizedBox.shrink();
      }
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 27),
        child: ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: activityList.length,
          itemBuilder: (context, index) {
            final weekActivities = activityList[index];
            return _buildExpansionPanel(weekActivities, index);
          },
        ),
      );
    } else {
      return const SizedBox.shrink();
    }
  }

  Widget _buildExpansionPanel(ActivityList weekActivities, int index) {
    final allCompleted = weekActivities.contents.every(
      (activity) => activity.attendance == true,
    );

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
                            ? AchaColors.primaryBlue
                            : AchaColors.primaryRed,
                      ),
                    ),
                    title: Text(
                      '${weekActivities.week}주차',
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AchaColors.gray60,
                      ),
                    ),
                  ),
                );
              },
              body: Column(
                children: [
                  const Divider(
                    height: 1,
                    color: AchaColors.gray245_246_248,
                  ),
                  ...weekActivities.contents.map(
                    (activity) {
                      return GestureDetector(
                        onTap: () => _openActivityUri(activity.link),
                        child: ListTile(
                          leading: SvgPicture.asset(activity.type.svgPath),
                          title: Text(
                            activity.title,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AchaColors.gray60,
                            ),
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
          3,
          (index) => const CarouselActivitySkeletonContainer(),
        ),
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
            color: AchaColors.white,
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
