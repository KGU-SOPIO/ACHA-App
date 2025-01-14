import 'package:freezed_annotation/freezed_annotation.dart';

part 'today_course.freezed.dart';
part 'today_course.g.dart';

@freezed
class TodayCourses with _$TodayCourses {
  const factory TodayCourses({
    List<TodayCourse>? courses
  }) = _TodayCourses;

  factory TodayCourses.fromJson(Map<String, dynamic> json) => _$TodayCoursesFromJson(json);
}

@freezed
class TodayCourse with _$TodayCourse {
  const factory TodayCourse({
    required String title,
    required String lectureRoom,
    required String professor,
    required String courseCode,
    DateTime? deadline
  }) = _TodayCourse;

  factory TodayCourse.fromJson(Map<String, dynamic> json) => _$TodayCourseFromJson(json);
}