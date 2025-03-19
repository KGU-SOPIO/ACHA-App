import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:acha/data/models/index.dart';

class CourseActivityListResponseConverter
    implements JsonConverter<CourseActivityListModel, Map<String, dynamic>> {
  const CourseActivityListResponseConverter({required this.field});

  final String field;

  @override
  CourseActivityListModel fromJson(Map<String, dynamic> json) {
    if (json.containsKey(field)) {
      return CourseActivityList.fromJson(json);
    } else {
      return CourseActivityListError.fromJson(json);
    }
  }

  @override
  Map<String, dynamic> toJson(CourseActivityListModel object) =>
      object.toJson();
}

class ActivityListResponseConverter
    implements JsonConverter<ActivityListModel, Map<String, dynamic>> {
  const ActivityListResponseConverter({required this.field});

  final String field;

  @override
  ActivityListModel fromJson(Map<String, dynamic> json) {
    if (json.containsKey(field)) {
      return ActivityList.fromJson(json);
    } else {
      return ActivityListError.fromJson(json);
    }
  }

  @override
  Map<String, dynamic> toJson(ActivityListModel object) => object.toJson();
}
