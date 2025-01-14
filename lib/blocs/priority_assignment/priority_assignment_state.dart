import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:acha/models/index.dart';

part 'priority_assignment_state.freezed.dart';

enum PriorityAssignmentStatus { loading, loaded, error }

@freezed
class PriorityAssignmentState with _$PriorityAssignmentState {
  const factory PriorityAssignmentState({
    required PriorityAssignmentStatus status,
    PriorityAssignments? priorityAssignments,
    String? message
  }) = _PriorityAssignmentState;
}