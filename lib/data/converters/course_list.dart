import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:acha/data/models/index.dart';

class CourseListResponseConverter
    implements JsonConverter<CourseListModel, Map<String, dynamic>> {
  const CourseListResponseConverter();

  @override
  CourseListModel fromJson(Map<String, dynamic> json) {
    if (json.containsKey('courseList')) {
      return CourseList.fromJson(json);
    } else {
      return CourseListError.fromJson(json);
    }
  }

  @override
  Map<String, dynamic> toJson(CourseListModel object) => object.toJson();
}
