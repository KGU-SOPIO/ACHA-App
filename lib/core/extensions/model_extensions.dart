import 'dart:collection';
import 'package:collection/collection.dart';

import 'package:acha/data/models/index.dart';

extension ActivitiesExtension on ActivityList {
  /// 필터링 된 활동 목록을 반환합니다.
  List<Activity>? _filterActivities({
    required Set<ActivityType> types,
    required bool onlyWithDeadline,
  }) {
    final now = DateTime.now();
    final filteredActivities = contents
        .where((activity) =>
            types.contains(activity.type) &&
            onlyWithDeadline &&
            activity.deadline != null &&
            activity.deadline!.isAfter(now))
        .toList();
    return filteredActivities.isEmpty ? null : filteredActivities;
  }

  /// 활동을 그룹화하고, 날짜별로 정렬 후 반환합니다.
  Map<DateTime, List<Activity>> _groupActivities(List<Activity> activityList) {
    // 같은 날짜 활동 그룹화
    final grouped = groupBy(
      activityList.where((activity) => activity.deadline != null),
      (activity) => DateTime(
        activity.deadline!.year,
        activity.deadline!.month,
        activity.deadline!.day,
      ),
    );

    // 날짜별 그룹 정렬
    grouped.forEach((date, activities) {
      activities.sort((a, b) => a.deadline!.compareTo(b.deadline!));
    });

    // 날짜 오름차순 정렬
    return SplayTreeMap<DateTime, List<Activity>>.from(
      grouped,
      (a, b) => a.compareTo(b),
    );
  }

  /// 강의 목록을 반환합니다.
  dynamic getLectureActivities({
    bool onlyWithDeadline = true,
    bool group = false,
  }) {
    final filteredActivities = _filterActivities(
      types: {ActivityType.lecture},
      onlyWithDeadline: onlyWithDeadline,
    );

    if (filteredActivities == null) return null;
    return group ? _groupActivities(filteredActivities) : filteredActivities;
  }

  /// 과제 목록을 반환합니다
  dynamic getAssignmentActivities({
    bool onlyWithDeadline = true,
    bool group = false,
  }) {
    final filteredActivities = _filterActivities(
      types: {ActivityType.assignment},
      onlyWithDeadline: onlyWithDeadline,
    );

    if (filteredActivities == null) return null;
    return group ? _groupActivities(filteredActivities) : filteredActivities;
  }

  /// 강의, 과제 목록을 반환합니다.
  dynamic getLectureAndAssignmentActivities({
    bool onlyWithDeadline = true,
    bool group = false,
  }) {
    final filteredActivities = _filterActivities(
      types: {ActivityType.lecture, ActivityType.assignment},
      onlyWithDeadline: onlyWithDeadline,
    );

    if (filteredActivities == null) return null;
    return group ? _groupActivities(filteredActivities) : filteredActivities;
  }
}
