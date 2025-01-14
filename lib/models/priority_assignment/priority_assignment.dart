import 'package:freezed_annotation/freezed_annotation.dart';

part 'priority_assignment.freezed.dart';
part 'priority_assignment.g.dart';

@freezed
class PriorityAssignments with _$PriorityAssignments {
  const factory PriorityAssignments({
    List<PriorityAssignment>? assignments,
    DateTime? deadline
  }) = _PriorityAssignments;

  factory PriorityAssignments.fromJson(Map<String, dynamic> json) => _$PriorityAssignmentsFromJson(json);
}

@freezed
class PriorityAssignment with _$PriorityAssignment {
  const factory PriorityAssignment({
    required String title,
    required String course,
    required String courseCode,
    required DateTime deadline
  }) = _PriorityAssignment;

  factory PriorityAssignment.fromJson(Map<String, dynamic> json) => _$PriorityAssignmentFromJson(json);
}