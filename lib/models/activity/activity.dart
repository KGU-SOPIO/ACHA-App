import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'activity.freezed.dart';
part 'activity.g.dart';

@JsonEnum(alwaysCreate: true)
@HiveType(typeId: 0)
enum ActivityType { @HiveField(0) file, @HiveField(1) lecture, @HiveField(2) assignment, @HiveField(3) url }

@freezed
class CourseActivities with _$CourseActivities {
  const factory CourseActivities({
    @Default([]) List<WeekActivities>? courseActivities
  }) = _CourseActivities;

  factory CourseActivities.fromJson(Map<String, dynamic> json) => _$CourseActivitiesFromJson(json);
}

@freezed
@HiveType(typeId: 2)
class WeekActivities with _$WeekActivities {
  const factory WeekActivities({
    @HiveField(0) int? week,
    @HiveField(1) @Default([]) List<Activity>? activities,
  }) = _WeekActivities;

  factory WeekActivities.fromJson(Map<String, dynamic> json) => _$WeekActivitiesFromJson(json);
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