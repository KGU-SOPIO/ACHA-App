import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:acha/data/models/index.dart';

class CourseResponseConverter
    implements JsonConverter<CourseModel, Map<String, dynamic>> {
  const CourseResponseConverter();

  @override
  CourseModel fromJson(Map<String, dynamic> json) {
    if (json.containsKey('id')) {
      return Course.fromJson(json);
    } else {
      return CourseError.fromJson(json);
    }
  }

  @override
  Map<String, dynamic> toJson(CourseModel object) => object.toJson();
}
