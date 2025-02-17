import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:acha/data/models/index.dart';
import 'package:acha/data/converters/index.dart';

part 'course_list.freezed.dart';
part 'course_list.g.dart';

@freezed
class CourseListModel with _$CourseListModel {
  const factory CourseListModel({
    required List<Course> courseList,
  }) = CourseList;

  const factory CourseListModel.error({
    @ErrorCodeConverter() required ErrorCode code,
  }) = CourseListError;

  factory CourseListModel.fromJson(Map<String, dynamic> json) =>
      const CourseListResponseConverter().fromJson(json);
}
