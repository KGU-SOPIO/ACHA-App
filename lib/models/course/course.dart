import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:acha/models/activity/activity.dart';

part 'course.freezed.dart';
part 'course.g.dart';

@freezed
class Course with _$Course {
  const factory Course({
    required String name,
    required String link,
    required String code,
    required String professor,
    required String lectureRoom,
    required List<Activity> activities,
  }) = _Course;

  factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);
}