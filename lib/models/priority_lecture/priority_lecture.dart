import 'package:freezed_annotation/freezed_annotation.dart';

part 'priority_lecture.freezed.dart';
part 'priority_lecture.g.dart';

@freezed
class PriorityLectures with _$PriorityLectures {
  const factory PriorityLectures({
    List<PriorityLecture>? lectures,
    DateTime? deadline
  }) = _PriorityLectures;

  factory PriorityLectures.fromJson(Map<String, dynamic> json) => _$PriorityLecturesFromJson(json);
}

@freezed
class PriorityLecture with _$PriorityLecture {
  const factory PriorityLecture({
    required String title,
    required String course,
    required String courseCode,
    required DateTime deadline
  }) = _PriorityLecture;

  factory PriorityLecture.fromJson(Map<String, dynamic> json) => _$PriorityLectureFromJson(json);
}