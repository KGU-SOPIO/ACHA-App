import 'package:freezed_annotation/freezed_annotation.dart';

part 'activity.freezed.dart';
part 'activity.g.dart';

@JsonEnum(alwaysCreate: true)
enum ActivityType { file, video, assignment, survey, board, url, text }

@freezed
class Activity with _$Activity {
  const factory Activity({
    required ActivityType activityType,
    String? name,
    String? link,
    String? code,
    DateTime? deadline,
    String? lectureTime,
    String? gradingStatus,
    String? timeLeft,
    String? lastModified,
    String? description,
    bool? isAvailable,
  }) = _Activity;

  factory Activity.fromJson(Map<String, dynamic> json) => _$ActivityFromJson(json);
}