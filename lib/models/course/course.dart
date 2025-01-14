import 'dart:collection';
import 'package:collection/collection.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:acha/models/index.dart';

part 'course.freezed.dart';
part 'course.g.dart';

@freezed
class Courses with _$Courses {
  const factory Courses({
    List<Course>? courses
  }) = _Courses;

  factory Courses.fromJson(Map<String, dynamic> json) => _$CoursesFromJson(json);
}

@freezed
@HiveType(typeId: 1)
class Course with _$Course {
  const Course._();

  const factory Course({
    @HiveField(0) required String name,
    @HiveField(1) required String professor,
    @HiveField(2) required String lectureRoom,
    @HiveField(3) DateTime? deadline,
    @HiveField(4) String? link,
    @HiveField(5) String? code,
    @HiveField(6) List<WeekActivities>? weekActivities,
    @HiveField(7) List<Notice>? notices
  }) = _Course;

  factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);

  /// 활동들을 날짜별로 그룹화합니다.
  Map<DateTime, List<Activity>> _groupActivities(List<Activity> activities) {
    final grouped = groupBy(
      activities.where((activity) => activity.deadline != null),
      (Activity activity) {
        return DateTime(activity.deadline!.year, activity.deadline!.month, activity.deadline!.day);
      }
    );

    grouped.forEach((date, activitiesList) {
      activitiesList.sort((a, b) => a.deadline!.compareTo(b.deadline!));
    });

    return SplayTreeMap<DateTime, List<Activity>>.from(
      grouped,
      (a, b) => a.compareTo(b),
    );
  }

  /// 조건에 따라 필터링된 활동 목록을 반환합니다.
  List<dynamic> _filterActivities({required Set<ActivityType> types, required bool onlyWithDeadline, required bool flat}) {
    if (flat) {
      return weekActivities!.expand((weekActivities) =>
        weekActivities.activities.where((activity) =>
          types.contains(activity.type) && (!onlyWithDeadline || activity.deadline != null))
      ).toList();
    }

    return weekActivities!.map((week) => week.copyWith(
      activities: week.activities.where((activity) =>
        types.contains(activity.type) && (!onlyWithDeadline || activity.deadline != null)
      ).toList(),
    )).toList();
  }

  /// 조건에 따라 그룹화된 활동 목록을 반환합니다.
  dynamic getActivities({required Set<ActivityType> types, required bool onlyWithDeadline, required bool flat, required bool group}) {
    if (group) {
      final filteredActivities = _filterActivities(types: types, onlyWithDeadline: onlyWithDeadline, flat: true);
      return _groupActivities(filteredActivities as List<Activity>);
    }
    return _filterActivities(types: types, onlyWithDeadline: onlyWithDeadline, flat: flat);
  }

  /// 강의 목록 반환
  dynamic getLectureActivities({bool onlyWithDeadline=true, bool flat=false, bool group=false}) => getActivities(types: {ActivityType.lecture}, onlyWithDeadline: onlyWithDeadline, flat: flat, group: group);

  /// 과제 목록 반환
  dynamic getAssignmentActivities({bool onlyWithDeadline=true, bool flat=false, bool group=false}) => getActivities(types: {ActivityType.assignment}, onlyWithDeadline: onlyWithDeadline, flat: flat, group: group);

  /// 강의, 과제 목록 반환
  dynamic getLectureAndAssignmentActivities({bool onlyWithDeadline=true, bool flat=false, bool group=false}) => getActivities(types: {ActivityType.lecture, ActivityType.assignment}, onlyWithDeadline: onlyWithDeadline, flat: flat, group: group);
}