// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'priority_lecture.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PriorityLecturesImpl _$$PriorityLecturesImplFromJson(
        Map<String, dynamic> json) =>
    _$PriorityLecturesImpl(
      lectures: (json['lectures'] as List<dynamic>?)
          ?.map((e) => PriorityLecture.fromJson(e as Map<String, dynamic>))
          .toList(),
      deadline: json['deadline'] == null
          ? null
          : DateTime.parse(json['deadline'] as String),
    );

Map<String, dynamic> _$$PriorityLecturesImplToJson(
        _$PriorityLecturesImpl instance) =>
    <String, dynamic>{
      'lectures': instance.lectures,
      'deadline': instance.deadline?.toIso8601String(),
    };

_$PriorityLectureImpl _$$PriorityLectureImplFromJson(
        Map<String, dynamic> json) =>
    _$PriorityLectureImpl(
      title: json['title'] as String,
      course: json['course'] as String,
      courseCode: json['courseCode'] as String,
      deadline: DateTime.parse(json['deadline'] as String),
    );

Map<String, dynamic> _$$PriorityLectureImplToJson(
        _$PriorityLectureImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'course': instance.course,
      'courseCode': instance.courseCode,
      'deadline': instance.deadline.toIso8601String(),
    };
