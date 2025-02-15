import 'package:freezed_annotation/freezed_annotation.dart';

part 'today_course_event.freezed.dart';

@freezed
class TodayCourseEvent with _$TodayCourseEvent {
  const factory TodayCourseEvent.fetchTodayCourses() = FetchTodayCourses;
}
