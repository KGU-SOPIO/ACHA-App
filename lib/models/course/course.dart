import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:acha/models/index.dart';

part 'course.freezed.dart';
part 'course.g.dart';

@freezed
class CourseList with _$CourseList {
  const factory CourseList({
    required List<Course> courses
  }) = _CourseList;

  factory CourseList.fromJson(Map<String, dynamic> json) => _$CourseListFromJson(json);
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
    NoticeList? notices
  }) = _Course;

  factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);
}