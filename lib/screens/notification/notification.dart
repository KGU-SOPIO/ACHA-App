import 'package:flutter/material.dart';

import 'package:get_it/get_it.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:acha/blocs/activity/index.dart';

import 'package:acha/models/index.dart';

import 'package:acha/extensions/index.dart';

import 'package:acha/widgets/containers/index.dart';
import 'package:acha/widgets/tabbars/index.dart';
import 'package:acha/widgets/toast/toast_manager.dart';

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

  @override
  void initState() {
    super.initState();
    context.read<ActivityBloc>().add(ActivityEvent.fetch());
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
          body: BlocListener<ActivityBloc, ActivityState>(
            listener: (context, state) {
              if (state.status == ActivityStatus.error) {
                GetIt.I<ToastManager>().error(message: '활동을 불러오지 못했어요');
              }
            },
            child: BlocBuilder<ActivityBloc, ActivityState>(
              builder: (context, state) {
                if (state.status == ActivityStatus.loading) {
                  return Loader(height: MediaQuery.of(context).size.height);
                } else if (state.status == ActivityStatus.loaded) {
                  final WeekActivities activities = state.weekActivities!;
                  
                  return TabBarView(
                    controller: _tabController,
                    children: [
                      _buildActivityListView(activities.getLectureAndAssignmentActivities(group: true)),
                      _buildActivityListView(activities.getLectureActivities(group: true)),
                      _buildActivityListView(activities.getAssignmentActivities(group: true))
                    ]
                  );
                } else {
                  return TabBarView(
                    controller: _tabController,
                    children: [
                      const Center(child: Text('활동을 불러오지 못했어요', style: TextStyle(fontSize: 15))),
                      const Center(child: Text('활동을 불러오지 못했어요', style: TextStyle(fontSize: 15))),
                      const Center(child: Text('활동을 불러오지 못했어요', style: TextStyle(fontSize: 15)))
                    ]
                  );
                }
              },
            )
          )
        )
      )
    );
  }

  Widget _buildActivityListView(Map<DateTime, List<Activity>> groupedActivities) {
    if (groupedActivities.isEmpty) {
      return Center(child: Text('다 끝내셨군요! 고생하셨어요'));
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
                  course: activity.courseName!,
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