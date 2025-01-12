import 'package:freezed_annotation/freezed_annotation.dart';

part 'assignment.freezed.dart';
part 'assignment.g.dart';

@JsonEnum(alwaysCreate: true)
enum SubmissionType { done, late, miss, unknown }

@freezed
class Assignment with _$Assignment {
  const factory Assignment({
    required bool available,
    SubmissionType? submitStatus,
    String? title,
    String? description,
    DateTime? deadline,
    String? gradingStatus,
    String? timeLeft,
    String? lastModified,
  }) = _Assignment;

  factory Assignment.fromJson(Map<String, dynamic> json) => _$AssignmentFromJson(json);
}