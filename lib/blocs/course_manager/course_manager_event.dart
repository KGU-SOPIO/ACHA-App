import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:acha/models/index.dart';

part 'course_manager_event.freezed.dart';

@freezed
class CourseManagerEvent with _$CourseManagerEvent {
  const factory CourseManagerEvent.load() = Load;
  const factory CourseManagerEvent.update({required Course course}) = Update;
}