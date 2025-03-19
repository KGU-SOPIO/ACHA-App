import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:acha/data/models/index.dart';
import 'package:acha/data/converters/index.dart';

part 'course.freezed.dart';
part 'course.g.dart';

@freezed
class CourseModel with _$CourseModel {
  const factory CourseModel({
    required String title,
    required String professor,
    required String lectureRoom,
    required String code,
    DateTime? deadline,
    String? link,
    CourseActivityList? courseActivityList,
    NoticeList? noticeList,
  }) = Course;

  const factory CourseModel.error({
    @ErrorCodeConverter() required ErrorCode code,
  }) = CourseError;

  factory CourseModel.fromJson(Map<String, dynamic> json) =>
      const CourseResponseConverter(field: 'id').fromJson(json);
}
