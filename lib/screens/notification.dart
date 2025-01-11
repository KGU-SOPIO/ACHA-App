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

  // 디버깅용 테스트 데이터
  Course data = testData;

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
              _buildActivityListView(data.getLectureAndAssignmentActivities(group: true)),
              _buildActivityListView(data.getLectureActivities(group: true)),
              _buildActivityListView(data.getAssignmentActivities(group: true))
            ]
          )
        )
      )
    );
  }

  Widget _buildActivityListView(Map<DateTime, List<Activity>> groupedActivities) {
    if (groupedActivities.isEmpty) {
      return Center(
        child: Text(
          "다 끝내셨군요! 고생하셨어요"
        )
      );
    }

    return ListView.builder(
      itemCount: groupedActivities.length,
      itemBuilder: (context, index) {
        final entry = groupedActivities.entries.elementAt(index);
        final date = entry.key;
        final activities = entry.value;
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DDayContainer(deadline: date),
              SizedBox(height: 16),
              ...activities.map(
                (activity) => ActivityContainer(
                  title: activity.name!,
                  course: data.name,
                  deadline: activity.deadline!.toTimeLeftFormattedTime(),
                  margin: EdgeInsets.only(bottom: 16),
                  backgroundColor: Colors.white
                )
              )
            ]
          )
        );
      }
    );
  }
}