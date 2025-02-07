import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:acha/models/index.dart';

part 'course.freezed.dart';
part 'course.g.dart';

@freezed
class Courses with _$Courses {
  const factory Courses({
    required List<Course> courses
  }) = _Courses;

  factory Courses.fromJson(Map<String, dynamic> json) => _$CoursesFromJson(json);
}

@freezed
class Course with _$Course {
  const factory Course({
    required String name,
    required String professor,
    required String lectureRoom,
    required String code,
    DateTime? deadline,
    String? link,
    CourseActivities? courseActivities,
    Notices? notices
  }) = _Course;

  factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);
}