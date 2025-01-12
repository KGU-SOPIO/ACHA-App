import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:acha/models/index.dart';

part 'course_manager_state.freezed.dart';

@freezed
class CourseManagerState with _$CourseManagerState {
  const factory CourseManagerState.initial() = Initial;
  const factory CourseManagerState.loading() = Loading;
  const factory CourseManagerState.updating({required Course course}) = Updating;
  const factory CourseManagerState.loaded({required List<Course> courses}) = Loaded;
  const factory CourseManagerState.error({required String message}) = Error;
}