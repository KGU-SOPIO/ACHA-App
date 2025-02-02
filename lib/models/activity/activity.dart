import 'package:freezed_annotation/freezed_annotation.dart';

part 'activity.freezed.dart';
part 'activity.g.dart';

@JsonEnum(alwaysCreate: true)
enum ActivityType { lecture, assignment, url }

@freezed
class CourseActivities with _$CourseActivities {
  const factory CourseActivities({
    @Default([]) List<WeekActivities>? weekActivities
  }) = _CourseActivities;

  factory CourseActivities.fromJson(Map<String, dynamic> json) => _$CourseActivitiesFromJson(json);
}

@freezed
class WeekActivities with _$WeekActivities {
  const factory WeekActivities({
    int? week,
    @Default([]) List<Activity>? activities,
  }) = _WeekActivities;

  factory WeekActivities.fromJson(Map<String, dynamic> json) => _$WeekActivitiesFromJson(json);
}

@freezed
class Activity with _$Activity {
  const factory Activity({
    required ActivityType type,
    required bool available,
    String? name,
    String? link,
    String? code,
    DateTime? deadline,
    String? lectureTime,
    bool? attendance,
    String? gradingStatus,
    String? timeLeft,
    String? lastModified,
    String? description,
    String? courseName,
  }) = _Activity;

  factory Activity.fromJson(Map<String, dynamic> json) => _$ActivityFromJson(json);
}