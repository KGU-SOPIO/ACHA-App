import 'package:freezed_annotation/freezed_annotation.dart';

part 'priority_lecture_event.freezed.dart';

@freezed
class PriorityLectureEvent with _$PriorityLectureEvent {
  const factory PriorityLectureEvent.fetch() = Fetch;
}