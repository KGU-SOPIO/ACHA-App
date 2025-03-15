import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:acha/core/constants/index.dart';
import 'package:acha/core/extensions/index.dart';
import 'package:acha/data/models/index.dart';
import 'package:acha/presentation/blocs/index.dart';
import 'package:acha/presentation/widgets/index.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();

  static Route<void> route() {
    return CupertinoPageRoute(builder: (context) => const NotificationScreen());
  }
}

class _NotificationScreenState extends State<NotificationScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    context.read<ActivityBloc>().add(const ActivityEvent.fetchActivities());
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
      backgroundColor: AchaColors.gray245_246_248,
      body: SafeArea(
        child: _buildContent(),
      ),
    );
  }

  Widget _buildContent() {
    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return [
          SliverToBoxAdapter(child: _buildAppBar()),
          SliverToBoxAdapter(
            child: NotificationTabbar(tabController: _tabController),
          ),
        ];
      },
      body: BlocBuilder<ActivityBloc, ActivityState>(
        builder: (context, state) {
          if (state.status == ActivityStatus.loading) {
            return _buildLoadingContent();
          } else if (state.status == ActivityStatus.loaded) {
            return _buildLoadedContent(state.activityList);
          } else {
            return _buildErrorContent();
          }
        },
      ),
    );
  }

  Widget _buildAppBar() {
    return const Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: AchaAppbar(),
    );
  }

  Widget _buildLoadingContent() {
    return Loader(height: MediaQuery.of(context).size.height);
  }

  Widget _buildLoadedContent(ActivityList? activities) {
    return TabBarView(controller: _tabController, children: [
      _buildActivityListView(
        activities?.getLectureAndAssignmentActivities(group: true),
      ),
      _buildActivityListView(activities?.getLectureActivities(group: true)),
      _buildActivityListView(activities?.getAssignmentActivities(group: true))
    ]);
  }

  Widget _buildErrorContent() {
    const errorWidget = Center(
      child: Text(
        '활동을 불러오지 못했어요',
        style: TextStyle(
          fontSize: 15,
          color: AchaColors.gray109,
        ),
      ),
    );

    return TabBarView(
      controller: _tabController,
      children: List.generate(3, (_) => errorWidget),
    );
  }

  Widget _buildActivityListView(
    Map<DateTime, List<Activity>>? groupedActivities,
  ) {
    if (groupedActivities == null) {
      return const Center(
        child: Text(
          '다 끝내셨군요! 고생하셨어요',
          style: TextStyle(
            fontSize: 15,
            color: AchaColors.gray109,
          ),
        ),
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
              const SizedBox(height: 16),
              ...activities.map(
                (activity) => ActivityContainer(
                  type: activity.type,
                  available: activity.available,
                  title: activity.title,
                  course: activity.courseName!,
                  deadline: activity.deadline!,
                  link: activity.link,
                  margin: const EdgeInsets.only(bottom: 16),
                  backgroundColor: AchaColors.white,
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
