import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:acha/data/models/index.dart';

part 'course_list_state.freezed.dart';

enum CourseListStatus { loading, loaded, error }

@freezed
class CourseListState with _$CourseListState {
  const factory CourseListState({
    required CourseListStatus status,
    CourseList? courseList,
    String? errorMessage,
  }) = _CourseListState;
}
