import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_manager_event.freezed.dart';

@freezed
class CourseManagerEvent with _$CourseManagerEvent {
  const factory CourseManagerEvent.fetch() = Fetch;
}