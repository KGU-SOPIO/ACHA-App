import 'package:freezed_annotation/freezed_annotation.dart';

part 'priority_assignment_event.freezed.dart';

@freezed
class PriorityAssignmentEvent with _$PriorityAssignmentEvent {
  const factory PriorityAssignmentEvent.fetch() = Fetch;
}