import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_event.freezed.dart';

@freezed
class CourseEvent with _$CourseEvent {
  const factory CourseEvent.fetchCourseActivities() = FetchCourseActivities;
}
