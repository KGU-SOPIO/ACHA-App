import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:acha/models/index.dart';

part 'course_manager_state.freezed.dart';

enum CourseManagerStatus { loading, loaded, error }

@freezed
class CourseManagerState with _$CourseManagerState {
  const factory CourseManagerState({
    required CourseManagerStatus status,
    Courses? courses,
    String? message
  }) = _CourseManagerState;
}