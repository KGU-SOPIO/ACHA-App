import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:acha/data/models/index.dart';

part 'course_state.freezed.dart';

enum CourseStatus { loading, loaded, error }

@freezed
class CourseState with _$CourseState {
  const factory CourseState({
    required CourseStatus status,
    required Course course,
    String? errorMessage,
  }) = _CourseState;
}
