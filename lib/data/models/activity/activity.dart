import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:acha/data/models/index.dart';
import 'package:acha/data/converters/index.dart';

part 'activity.freezed.dart';
part 'activity.g.dart';

@JsonEnum(alwaysCreate: true)
enum ActivityType { url, file, lecture, assignment }

@freezed
class CourseActivityListModel with _$CourseActivityListModel {
  const factory CourseActivityListModel({
    required List<ActivityList> weekActivityList,
  }) = CourseActivityList;

  const factory CourseActivityListModel.error({
    @ErrorCodeConverter() required ErrorCode code,
  }) = CourseActivityListError;

  factory CourseActivityListModel.fromJson(Map<String, dynamic> json) =>
      const CourseActivityListResponseConverter().fromJson(json);
}

@freezed
class ActivityListModel with _$ActivityListModel {
  const factory ActivityListModel({
    int? week,
    required List<Activity> activitylist,
  }) = ActivityList;

  const factory ActivityListModel.error({
    @ErrorCodeConverter() required ErrorCode code,
  }) = ActivityListError;

  factory ActivityListModel.fromJson(Map<String, dynamic> json) =>
      const ActivityListResponseConverter().fromJson(json);
}

@freezed
class ActivityModel with _$ActivityModel {
  const factory ActivityModel({
    required ActivityType type,
    required bool available,
    required String name,
    required String link,
    required String code,
    DateTime? deadline,
    String? lectureTime,
    bool? attendance,
    String? gradingStatus,
    String? timeLeft,
    String? lastModified,
    String? description,
    String? courseName,
  }) = Activity;

  factory ActivityModel.fromJson(Map<String, dynamic> json) =>
      _$ActivityModelFromJson(json);
}
