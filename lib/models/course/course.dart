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
      ).toList()
    ).toList();
  }

  List<dynamic> getLectureActivities({bool onlyWithDeadline=true, bool flat=false}) {
    return getActivitiesByTypes(types: {ActivityType.video}, onlyWithDeadline: onlyWithDeadline, flat: flat);
  }

  List<dynamic> getAssignmentActivities({bool onlyWithDeadline=true, bool flat=false}) {
    return getActivitiesByTypes(types: {ActivityType.video}, onlyWithDeadline: onlyWithDeadline, flat: flat);
  }

  List<dynamic> getLectureAndAssignmentActivities({bool onlyWithDeadline=true, bool flat=false}) {
    return getActivitiesByTypes(types: {ActivityType.video, ActivityType.assignment}, onlyWithDeadline: onlyWithDeadline, flat: flat);
  }
}