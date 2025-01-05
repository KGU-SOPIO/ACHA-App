import 'package:flutter/material.dart';

import 'package:acha/models/index.dart';

import 'package:acha/extensions/index.dart';

import 'package:acha/widgets/containers/index.dart';
import 'package:acha/widgets/tabbars/index.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();

  static Route<void> route() {
    return MaterialPageRoute(
      builder: (context) => const NotificationScreen()
    );
  }
}

class _NotificationScreenState extends State<NotificationScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

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
          deadline: DateTime.now().add(const Duration(hours: 5)),
        ),
        Activity(
          activityType: ActivityType.assignment,
          name: '1주차 과제!',
          deadline: DateTime.now().add(const Duration(days: 3)),
        ),
        Activity(
          activityType: ActivityType.video,
          name: '1주차 !!!!',
        ),
      ],
      [
        Activity(
          activityType: ActivityType.video,
          name: '2주차 강의!',
          link: 'https://example.com/video2',
          deadline: DateTime.now().add(const Duration(days: 5)),
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
          deadline: DateTime.now().add(const Duration(days: 5)),
        ),
      ],
      [
        Activity(
          activityType: ActivityType.video,
          name: '3주차 강의!',
          link: 'https://example.com/video3',
          deadline: DateTime.now().add(const Duration(days: 5)),
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
          deadline: DateTime.now().add(const Duration(days: 5)),
        ),
      ],
    ],
  );

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 246, 248),
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: AchaAppbar()
                )
              ),
              SliverToBoxAdapter(child: NotificationTabbar(tabController: _tabController))
            ];
          },
          body: TabBarView(
            controller: _tabController,
            children: [
              _buildActivityListView(data.getLectureAndAssignmentActivities(flat: true)),
              _buildActivityListView(data.getLectureActivities(flat: true)),
              _buildActivityListView(data.getAssignmentActivities(flat: true))
            ]
          )
        )
      )
    );
  }

  Widget _buildActivityListView(List<dynamic> activities) {
    if (activities.isEmpty) {
      return Center(
        child: Text(
          "다 끝내셨군요! 고생하셨어요"
        ),
      );
    }

    return ListView.builder(
      itemCount: activities.length,
      itemBuilder: (context, index) {
        final activity = activities[index] as Activity;
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26),
          child: ActivityContainer(
            title: activity.name!,
            course: data.name,
            deadline: activity.deadline!.toTimeLeftFormattedTime(),
            margin: EdgeInsets.only(bottom: 16),
            backgroundColor: Colors.white
          )
        );
      }
    );
  }
}