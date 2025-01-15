import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_list_event.freezed.dart';

@freezed
class CourseListEvent with _$CourseListEvent {
  const factory CourseListEvent.fetch() = Fetch;
}