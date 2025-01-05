import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked_list_carousel/stacked_list_carousel.dart';

import 'package:acha/models/index.dart';

import 'package:acha/widgets/containers/index.dart';
import 'package:acha/widgets/buttons/index.dart';

class CourseMainScreen extends StatefulWidget {
  const CourseMainScreen({super.key});

  @override
  State<CourseMainScreen> createState() => _CourseMainScreenState();

  static Route<void> route() {
    return MaterialPageRoute(builder: (context) => CourseMainScreen());
  }
}

class _CourseMainScreenState extends State<CourseMainScreen> {
  late final List<dynamic> trackedActivities;
  late final List<dynamic> containers;

  final Course data = Course(
    name: '사고와 표현',
    link: 'https://example.com/course',
    code: 'CRS001',
    professor: '송명진',
    lectureRoom: '301',
    activities: [
      [
        Activity(
          activityType: ActivityType.video,
          name: '1주차 강의!',
          link: 'https://example.com/video1',
        ),
        Activity(
          activityType: ActivityType.assignment,
          name: '1주차 과제!',
          deadline: DateTime.now().add(const Duration(days: 3)),
        ),
        Activity(
          activityType: ActivityType.board,
          name: '1주차 게시판!',
        ),
      ],
      [
        Activity(
          activityType: ActivityType.video,
          name: '2주차 강의!',
          link: 'https://example.com/video2',
        ),
        Activity(
          activityType: ActivityType.assignment,
          name: '2주차 과제!',
          deadline: DateTime.now().add(const Duration(days: 5)),
        ),
        Activity(
          activityType: ActivityType.survey,
          name: '2주차 설문!',
          link: 'https://example.com/survey2',
        ),
      ],
      [
        Activity(
          activityType: ActivityType.video,
          name: '3주차 강의!',
          link: 'https://example.com/video3',
        ),
        Activity(
          activityType: ActivityType.assignment,
          name: '3주차 과제!',
          deadline: DateTime.now().add(const Duration(days: 7)),
        ),
        Activity(
          activityType: ActivityType.file,
          name: '3주차 자료!',
          link: 'https://example.com/file3',
        ),
      ],
    ],
  );

  @override
  void initState() {
    super.initState();
    trackedActivities = data.getLectureAndAssignmentActivities();
    containers = trackedActivities.asMap().entries.expand((entry) {
      final week = entry.key;
      final weekActivities = entry.value;
      return weekActivities.map((activity) => _buildActivityContainer(week: week + 1, activity: activity));
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 245, 246, 248)
          ),
          child: ListView(
            physics: ClampingScrollPhysics(),
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))
                ),
                child: ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 40),
                      child: AchaAppbar(backgroundColor: Colors.white)
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(horizontal: 26),
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            margin: EdgeInsets.only(bottom: 25),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(bottom: 5),
                                  child: Text(
                                    "송명진 교수님",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: "Pretendard",
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255, 30, 30, 30)
                                    )
                                  )
                                ),
                                Text(
                                  "사고와 표현",
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontFamily: "Pretendard",
                                    fontWeight: FontWeight.w700,
                                    color: Color.fromARGB(255, 30, 30, 30)
                                  )
                                )
                              ]
                            )
                          ),
                          RowContainerButton(
                            margin: EdgeInsets.only(bottom: 27),
                            padding: EdgeInsets.symmetric(vertical: 17),
                            onPressed: () {},
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.white,
                            border: BorderSide(
                              color: Color.fromARGB(255, 0, 102, 255)
                            ),
                            borderRadius: 20,
                            text: "공지사항",
                            textStyle: TextStyle(
                              fontSize: 14,
                              fontFamily: "Pretendard",
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 0, 102, 255)
                            ),
                            widget: SvgPicture.asset("lib/assets/svgs/course/right_arrow.svg")
                          ),
                          Container(
                            width: double.infinity,
                            margin: EdgeInsets.only(bottom: 15),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(right: 4),
                                  child: RichText(
                                    text: TextSpan(
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: "Pretendard",
                                        color: Color.fromARGB(255, 30, 30, 30)
                                      ),
                                      children: [
                                        TextSpan(
                                          text: "주차별 ",
                                          style: TextStyle(fontWeight: FontWeight.w700)
                                        ),
                                        TextSpan(
                                          text: "학습 활동",
                                          style: TextStyle(fontWeight: FontWeight.w500)
                                        )
                                      ]
                                    )
                                  )
                                ),
                                SvgPicture.asset("lib/assets/svgs/course/course_book.svg")
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 160,
                            margin: EdgeInsets.only(bottom: 5),
                            child: StackedListCarousel(
                              items: containers,
                              behavior: CarouselBehavior.loop,
                              cardBuilder: (context, item, size) {
                                return item;
                              },
                              outermostCardHeightFactor: 0.94,
                              itemGapHeightFactor: 0.03,
                              cardAspectRatio: MediaQuery.of(context).size.width / 160,
                              outermostCardAnimationDuration: Duration(milliseconds: 200),
                              autoSlideDuration: Duration(seconds: 5),
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
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 27),
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: data.activities.length,
                  itemBuilder: (context, index) {
                    final List<Activity> weekActivities = data.activities[index];

                    return Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(bottom: 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: ExpansionPanelList.radio(
                          elevation: 0,
                          expandedHeaderPadding: EdgeInsets.zero,
                          children: [
                            ExpansionPanelRadio(
                              canTapOnHeader: true,
                              value: "$index",
                              headerBuilder:(context, isExpanded) {
                                return Padding(
                                  padding: EdgeInsets.symmetric(vertical: 7),
                                  child: ListTile(
                                    leading: Padding(
                                      padding: EdgeInsets.only(left: 4),
                                      child: Icon(Icons.circle, size: 15, color: Color.fromARGB(255, 255, 78, 107))
                                    ),
                                    title: Text(
                                      "${index + 1}주차",
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontFamily: "Pretendard",
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
                                  ...weekActivities.map((activity) {
                                    return ListTile(
                                      leading: SvgPicture.asset("lib/assets/svgs/course/video.svg"),
                                      title: Text(
                                        activity.name!,
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: "Pretendard",
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
          )
        )
      )
    );
  }

  Widget _buildActivityContainer({required int week, required Activity activity}) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 22),
      decoration: BoxDecoration(
        border: Border.all(
          color: Color.fromARGB(255, 237, 239, 242)
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(25)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 12),
            child: Text(
              "$week주차",
              style: TextStyle(
                fontSize: 14,
                fontFamily: "Pretendard",
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 30, 30, 30)
              )
            )
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 14, vertical: 14),
            decoration: BoxDecoration(
              border: Border.all(
                color: Color.fromARGB(255, 237, 239, 242),
                width: 1.5
              ),
              borderRadius: BorderRadius.circular(12)
            ),
            child: Row(
              children: [
                SvgPicture.asset("lib/assets/svgs/course/video.svg"),
                Padding(
                  padding: EdgeInsets.only(left: 7),
                  child: Text(
                    activity.name!,
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: "Pretendard",
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 60, 60, 60)
                    )
                  )
                )
              ]
            )
          )
        ]
      )
    );
  }
}