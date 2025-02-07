// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoursesImpl _$$CoursesImplFromJson(Map<String, dynamic> json) =>
    _$CoursesImpl(
      courses: (json['courses'] as List<dynamic>)
          .map((e) => Course.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CoursesImplToJson(_$CoursesImpl instance) =>
    <String, dynamic>{
      'courses': instance.courses,
    };

_$CourseImpl _$$CourseImplFromJson(Map<String, dynamic> json) => _$CourseImpl(
      name: json['name'] as String,
      professor: json['professor'] as String,
      lectureRoom: json['lectureRoom'] as String,
      code: json['code'] as String,
      deadline: json['deadline'] == null
          ? null
          : DateTime.parse(json['deadline'] as String),
      link: json['link'] as String?,
      courseActivities: json['courseActivities'] == null
          ? null
          : CourseActivities.fromJson(
              json['courseActivities'] as Map<String, dynamic>),
      notices: json['notices'] == null
          ? null
          : Notices.fromJson(json['notices'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CourseImplToJson(_$CourseImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'professor': instance.professor,
      'lectureRoom': instance.lectureRoom,
      'code': instance.code,
      'deadline': instance.deadline?.toIso8601String(),
      'link': instance.link,
      'courseActivities': instance.courseActivities,
      'notices': instance.notices,
    };
