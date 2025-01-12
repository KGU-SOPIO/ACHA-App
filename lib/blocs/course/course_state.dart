import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:acha/models/index.dart';

part 'course_state.freezed.dart';

@freezed
class CourseState with _$CourseState {
  const factory CourseState.initial() = Initial;
  const factory CourseState.loading() = Loading;
  const factory CourseState.loadingWeekActivities() = LoadingWeekActivities;
  const factory CourseState.loadingNotices() = LoadingNotices;
  const factory CourseState.loaded({required Course course}) = Loaded;
  const factory CourseState.error({required String message}) = Error;
}