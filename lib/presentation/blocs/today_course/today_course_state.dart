import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:acha/data/models/index.dart';

part 'today_course_state.freezed.dart';

enum TodayCourseStatus { loading, loaded, error }

@freezed
class TodayCourseState with _$TodayCourseState {
  const factory TodayCourseState({
    required TodayCourseStatus status,
    CourseList? todayCourses,
    String? errorMessage,
  }) = _TodayCourseState;
}
