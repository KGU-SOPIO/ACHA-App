import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:acha/models/index.dart';

part 'course.freezed.dart';
part 'course.g.dart';

@freezed
class Courses with _$Courses {
  const factory Courses({
    @Default([]) List<Course>? courses
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
    @HiveField(3) required String code,
    @HiveField(4) DateTime? deadline,
    @HiveField(5) String? link,
    @HiveField(6) CourseActivities? courseActivities,
    @HiveField(7) List<Notice>? notices
  }) = _Course;

  factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);
}