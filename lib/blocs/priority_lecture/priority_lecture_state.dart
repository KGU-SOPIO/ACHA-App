import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:acha/models/index.dart';

part 'priority_lecture_state.freezed.dart';

enum PriorityLectureStatus { loading, loaded, error }

@freezed
class PriorityLectureState with _$PriorityLectureState {
  const factory PriorityLectureState({
    required PriorityLectureStatus status,
    PriorityLectures? priorityLectures,
    String? message
  }) = _PriorityLectureState;
}