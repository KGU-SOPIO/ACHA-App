import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:get_it/get_it.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked_list_carousel/stacked_list_carousel.dart';

import 'package:acha/blocs/course/index.dart';

import 'package:acha/models/index.dart';
import 'package:acha/repository/index.dart';

import 'package:acha/screens/notice/notice.dart';

import 'package:acha/widgets/containers/index.dart';
import 'package:acha/widgets/buttons/index.dart';

class CourseMainScreen extends StatefulWidget {
  const CourseMainScreen({super.key});

  @override
  State<CourseMainScreen> createState() => _CourseMainScreenState();

  static Route<void> route({required Course course}) {
    return CupertinoPageRoute(
      builder: (context) => BlocProvider(
        create: (context) => CourseBloc(
          courseRepository: GetIt.I<CourseRepository>(),
          course: course
        )..add(CourseEvent.fetchActivities()),
        child: const CourseMainScreen()
      )
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
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 245, 246, 248)
          ),
          child: BlocBuilder<CourseBloc, CourseState>(
            builder: (context, state) {
              return ListView(
                physics: const ClampingScrollPhysics(),
                children: [
                  DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))
                    ),
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        AchaAppbar(backgroundColor: Colors.white),
                        const SizedBox(height: 40),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 26),
                          child: Column(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    '${state.course.professor} 교수',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255, 30, 30, 30)
                                    )
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    state.course.name,
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromARGB(255, 30, 30, 30)
                                    )
                                  )
                                ]
                              ),
                              const SizedBox(height: 25),
                              RowContainerButton(
                                padding: EdgeInsets.symmetric(vertical: 17),
                                onPressed: () => Navigator.push(context, NoticeScreen.route(course: state.course)),
                                foregroundColor: Colors.white,
                                backgroundColor: Colors.white,
                                border: BorderSide(
                                  color: Color.fromARGB(255, 0, 102, 255)
                                ),
                                borderRadius: 20,
                                text: '공지사항',
                                textStyle: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 0, 102, 255)
                                ),
                                widget: SvgPicture.asset('lib/assets/svgs/course/right_arrow.svg')
                              ),
                              const SizedBox(height: 27),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Row(
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Color.fromARGB(255, 30, 30, 30)
                                          ),
                                          children: [
                                            TextSpan(
                                              text: '주차별 ',
                                              style: TextStyle(fontWeight: FontWeight.w700)
                                            ),
                                            TextSpan(
                                              text: '학습 활동',
                                              style: TextStyle(fontWeight: FontWeight.w500)
                                            )
                                          ]
                                        )
                                      ),
                                      const SizedBox(width: 5),
                                      SvgPicture.asset('lib/assets/svgs/course/course.svg')
                                    ]
                                  ),
                                  const SizedBox(height: 15),
                                  BlocBuilder<CourseBloc, CourseState>(
                                    builder: (context, state) {
                                      if (state.status == CourseStatus.loading) {
                                        return _buildCarouselSkeleton();
                                      } else if (state.status == CourseStatus.loaded) {
                                        final CourseActivities courseActivities = state.course.courseActivities!;
                                        final containers = (courseActivities.courseActivities ?? []).expand((weekActivities) {
                                          final week = weekActivities.week;
                                          return (weekActivities.activities ?? []).map((activity) {
                                            return CarouselActivityContainer(week: week!, activity: activity);
                                          });
                                        }).toList();

                                        if (containers.isNotEmpty) {
                                          return Container(
                                            height: 160,
                                            margin: EdgeInsets.only(bottom: 5),
                                            child: StackedListCarousel(
                                              items: containers,
                                              behavior: CarouselBehavior.loop,
                                              cardBuilder: (context, item, size) => item,
                                              outermostCardHeightFactor: 0.9,
                                              itemGapHeightFactor: 0.03,
                                              cardAspectRatio: MediaQuery.of(context).size.width / 160,
                                              outermostCardAnimationDuration: Duration(milliseconds: 200),
                                              autoSlideDuration: Duration(seconds: 5),
                                            )
                                          );
                                        } else {
                                          return const SizedBox(
                                            height: 160,
                                            child: Center(
                                              child: Text('등록된 활동이 없어요')
                                            )
                                          );
                                        }
                                      } else {
                                        return const SizedBox(
                                          height: 165,
                                          child: Center(
                                            child: Text(
                                              '활동을 불러오지 못했어요',
                                              style: TextStyle(
                                                fontSize: 15
                                              )
                                            )
                                          )
                                        );
                                      }
                                    }
                                  )
                                ]
                              )
                            ]
                          )
                        )
                      ]
                    )
                  ),
                  if (state.status == CourseStatus.loading)
                    const SizedBox.shrink()
                  else if (state.status == CourseStatus.loaded)
                    if (state.course.courseActivities!.courseActivities!.isEmpty)
                      const SizedBox.shrink()
                    else
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 27),
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: state.course.courseActivities!.courseActivities!.length,
                          itemBuilder: (context, index) {
                            final WeekActivities weekActivities = state.course.courseActivities!.courseActivities![index];

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
                                      headerBuilder:(context, isExpanded) {
                                        return Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 7),
                                          child: ListTile(
                                            leading: Padding(
                                              padding: const EdgeInsets.only(left: 4),
                                              child: Icon(Icons.circle, size: 15, color: Color.fromARGB(255, 255, 78, 107))
                                            ),
                                            title: Text(
                                              '${index + 1}주차',
                                              style: const TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                color: Color.fromARGB(255, 60, 60, 60)
                                              )
                                            )
                                          )
                                        );
                                      },
                                      body: Column(
                                        children: [
                                          Divider(height: 1, color: Color.fromARGB(255, 245, 246, 248)),
                                          ...weekActivities.activities!.map((activity) {
                                            return ListTile(
                                              leading: SvgPicture.asset('lib/assets/svgs/course/lecture.svg'),
                                              title: Text(
                                                activity.name!,
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color.fromARGB(255, 60, 60, 60)
                                                )
                                              )
                                            );
                                          })
                                        ]
                                      )
                                    )
                                  ]
                                )
                              )
                            );
                          }
                        )
                      )
                ]
              );
            }
          )
        )
      )
    );
  }
  
  Widget _buildCarouselSkeleton() {
    return Container(
      height: 160,
      margin: EdgeInsets.only(bottom: 5),
      child: StackedListCarousel(
        items: List.generate(3, (index) => const CarouselActivitySkeletonContainer()),
        disableAutomaticLoop: true,
        behavior: CarouselBehavior.loop,
        cardBuilder: (context, item, size) => item,
        outermostCardHeightFactor: 0.9,
        itemGapHeightFactor: 0.03,
        cardAspectRatio: MediaQuery.of(context).size.width / 160,
        outermostCardAnimationDuration: Duration(milliseconds: 200),
      )
    );
  }
}