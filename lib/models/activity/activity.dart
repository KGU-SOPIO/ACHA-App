import 'dart:collection';
import 'package:collection/collection.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'activity.freezed.dart';
part 'activity.g.dart';

@JsonEnum(alwaysCreate: true)
@HiveType(typeId: 0)
enum ActivityType { @HiveField(0) file, @HiveField(1) lecture, @HiveField(2) assignment, @HiveField(3) url }

@freezed
@HiveType(typeId: 2)
class Activities with _$Activities {
  const factory Activities({
    @HiveField(0) int? week,
    @HiveField(1) List<Activity>? activities,
  }) = _Activities;

  factory Activities.fromJson(Map<String, dynamic> json) => _$ActivitiesFromJson(json);
}

extension ActivitiesExtension on Activities {
  /// 그룹화된 활동들을 날짜별로 반환합니다.
  Map<DateTime, List<Activity>> _groupActivities(List<Activity> activities) {
    final grouped = groupBy(
      activities.where((activity) => activity.deadline != null),
      (Activity activity) {
        return DateTime(
          activity.deadline!.year, 
          activity.deadline!.month, 
          activity.deadline!.day
        );
      }
    );

    grouped.forEach((date, activitiesList) {
      activitiesList.sort((a, b) => a.deadline!.compareTo(b.deadline!));
    });

    return SplayTreeMap<DateTime, List<Activity>>.from(grouped,(a, b) => a.compareTo(b));
  }

  /// 조건에 따라 필터링된 활동 목록을 반환합니다.
  List<Activity> _filterActivities({required Set<ActivityType> types, required bool onlyWithDeadline}) {
    return activities!.where((activity) => types.contains(activity.type) && (!onlyWithDeadline || activity.deadline != null)).toList();
  }

  /// 조건에 따라 그룹화된 활동 목록을 반환합니다.
  dynamic getActivities({required Set<ActivityType> types, required bool onlyWithDeadline, required bool flat, required bool group}) {
    final filteredActivities = _filterActivities(types: types, onlyWithDeadline: onlyWithDeadline);
    if (group) {
      return _groupActivities(filteredActivities);
    }

    if (flat) {
      return filteredActivities;
    }

    return activities;
  }

  /// 강의 목록 반환
  dynamic getLectureActivities({bool onlyWithDeadline=true, bool flat=false, bool group=false}) => getActivities(types: {ActivityType.lecture}, onlyWithDeadline: onlyWithDeadline, flat: flat, group: group);

  /// 과제 목록 반환
  dynamic getAssignmentActivities({bool onlyWithDeadline=true, bool flat=false, bool group=false}) => getActivities(types: {ActivityType.assignment}, onlyWithDeadline: onlyWithDeadline, flat: flat, group: group);

  /// 강의, 과제 목록 반환
  dynamic getLectureAndAssignmentActivities({bool onlyWithDeadline=true, bool flat=false, bool group=false}) => getActivities(types: {ActivityType.lecture, ActivityType.assignment}, onlyWithDeadline: onlyWithDeadline, flat: flat, group: group);
}

@freezed
@HiveType(typeId: 3)
class Activity with _$Activity {
  const factory Activity({
    @HiveField(0) required ActivityType type,
    @HiveField(1) required bool available,
    @HiveField(2) String? name,
    @HiveField(3) String? link,
    @HiveField(4) String? code,
    @HiveField(5) DateTime? deadline,
    @HiveField(6) String? lectureTime,
    @HiveField(7) bool? attendance,
    @HiveField(8) String? gradingStatus,
    @HiveField(9) String? timeLeft,
    @HiveField(10) String? lastModified,
    @HiveField(11) String? description,
    @HiveField(12) String? courseName,
  }) = _Activity;

  factory Activity.fromJson(Map<String, dynamic> json) => _$ActivityFromJson(json);
}