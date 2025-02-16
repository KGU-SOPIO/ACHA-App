import 'dart:collection';
import 'package:collection/collection.dart';

import 'package:acha/data/models/activity/activity.dart';

extension ActivitiesExtension on WeekActivities {
  /// 그룹화된 활동들을 날짜별로 반환합니다.
  Map<DateTime, List<Activity>> _groupActivities(List<Activity> activities) {
    final grouped = groupBy(
        activities.where((activity) => activity.deadline != null), (activity) {
      return DateTime(activity.deadline!.year, activity.deadline!.month,
          activity.deadline!.day);
    });

    grouped.forEach((date, activitiesList) {
      activitiesList.sort((a, b) => a.deadline!.compareTo(b.deadline!));
    });

    return SplayTreeMap<DateTime, List<Activity>>.from(
        grouped, (a, b) => a.compareTo(b));
  }

  /// 조건에 따라 필터링된 활동 목록을 반환합니다.
  List<Activity> _filterActivities(
      {required Set<ActivityType> types, required bool onlyWithDeadline}) {
    return activities
        .where(
          (activity) =>
              types.contains(activity.type) &&
              onlyWithDeadline &&
              activity.deadline != null &&
              activity.deadline!.isAfter(DateTime.now()),
        )
        .toList();
  }

  /// 조건에 따라 그룹화된 활동 목록을 반환합니다.
  dynamic getActivities(
      {required Set<ActivityType> types,
      required bool onlyWithDeadline,
      required bool flat,
      required bool group}) {
    final filteredActivities =
        _filterActivities(types: types, onlyWithDeadline: onlyWithDeadline);
    if (group) {
      return _groupActivities(filteredActivities);
    }

    if (flat) {
      return filteredActivities;
    }

    return activities;
  }

  /// 강의 목록 반환
  dynamic getLectureActivities(
          {bool onlyWithDeadline = true,
          bool flat = false,
          bool group = false}) =>
      getActivities(
          types: {ActivityType.lecture},
          onlyWithDeadline: onlyWithDeadline,
          flat: flat,
          group: group);

  /// 과제 목록 반환
  dynamic getAssignmentActivities(
          {bool onlyWithDeadline = true,
          bool flat = false,
          bool group = false}) =>
      getActivities(
          types: {ActivityType.assignment},
          onlyWithDeadline: onlyWithDeadline,
          flat: flat,
          group: group);

  /// 강의, 과제 목록 반환
  dynamic getLectureAndAssignmentActivities(
          {bool onlyWithDeadline = true,
          bool flat = false,
          bool group = false}) =>
      getActivities(
          types: {ActivityType.lecture, ActivityType.assignment},
          onlyWithDeadline: onlyWithDeadline,
          flat: flat,
          group: group);
}
