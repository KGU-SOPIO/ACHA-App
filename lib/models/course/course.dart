import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:acha/models/index.dart';

part 'course.freezed.dart';
part 'course.g.dart';

@freezed
class Course with _$Course {
  const Course._();

  const factory Course({
    required String name,
    required String link,
    required String code,
    required String professor,
    required String lectureRoom,
    required List<List<Activity>> activities,
  }) = _Course;

  factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);

  /// 활동들을 날짜별로 그룹화합니다.
  Map<DateTime, List<Activity>> _groupActivities(List<Activity> activities) {
    final Map<DateTime, List<Activity>> group = {};

    for (final activity in activities) {
      final key = DateTime(activity.deadline!.year, activity.deadline!.month, activity.deadline!.day);
      group.putIfAbsent(key, () => []).add(activity);
    }

    return group.map(
      (date, activitiesList) {
        activitiesList.sort((a, b) => a.deadline!.compareTo(b.deadline!));
        return MapEntry(date, activitiesList);
      }
    )..entries.toList().sort((a, b) => a.key.compareTo(b.key));
  }

  /// 조건에 따라 필터링된 활동 목록을 반환합니다.
  List<dynamic> getActivitiesByTypes({required Set<ActivityType> types, required bool onlyWithDeadline, required bool flat}) {
    if (flat) {
      return activities.expand(
        (weekActivities) => weekActivities.where(
          (activity) => types.contains(activity.activityType) && (!onlyWithDeadline || activity.deadline != null)
        )
      ).toList();
    }
    
    return activities.map(
      (weekActivities) => weekActivities.where(
        (activity) => types.contains(activity.activityType) && (!onlyWithDeadline || activity.deadline != null)
      ).cast<Activity>().toList()
    ).toList();
  }

  /// 조건에 따라 그룹화된 활동 목록을 반환합니다.
  dynamic getActivities({required Set<ActivityType> types, required bool onlyWithDeadline, required bool flat, required bool group}) {    
    if (group) {
      final filteredActivities = getActivitiesByTypes(types: types, onlyWithDeadline: onlyWithDeadline, flat: true);
      return _groupActivities(filteredActivities.cast<Activity>());
    }
    return getActivitiesByTypes(types: types, onlyWithDeadline: onlyWithDeadline, flat: flat).cast<Activity>();
  }

  /// 강의 목록 반환
  dynamic getLectureActivities({bool onlyWithDeadline = true, bool flat = false, bool group = false}) => getActivities(types: {ActivityType.video}, onlyWithDeadline: onlyWithDeadline, flat: flat, group: group);

  /// 과제 목록 반환
  dynamic getAssignmentActivities({bool onlyWithDeadline = true, bool flat = false, bool group = false}) => getActivities(types: {ActivityType.assignment}, onlyWithDeadline: onlyWithDeadline, flat: flat, group: group);

  /// 강의, 과제 목록 반환
  dynamic getLectureAndAssignmentActivities({bool onlyWithDeadline = true, bool flat = false, bool group = false}) => getActivities(types: {ActivityType.video, ActivityType.assignment}, onlyWithDeadline: onlyWithDeadline, flat: flat, group: group);
}