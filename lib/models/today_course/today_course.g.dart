// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'today_course.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TodayCoursesImpl _$$TodayCoursesImplFromJson(Map<String, dynamic> json) =>
    _$TodayCoursesImpl(
      courses: (json['courses'] as List<dynamic>?)
          ?.map((e) => TodayCourse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TodayCoursesImplToJson(_$TodayCoursesImpl instance) =>
    <String, dynamic>{
      'courses': instance.courses,
    };

_$TodayCourseImpl _$$TodayCourseImplFromJson(Map<String, dynamic> json) =>
    _$TodayCourseImpl(
      title: json['title'] as String,
      lectureRoom: json['lectureRoom'] as String,
      professor: json['professor'] as String,
      deadline: json['deadline'] == null
          ? null
          : DateTime.parse(json['deadline'] as String),
    );

Map<String, dynamic> _$$TodayCourseImplToJson(_$TodayCourseImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'lectureRoom': instance.lectureRoom,
      'professor': instance.professor,
      'deadline': instance.deadline?.toIso8601String(),
    };
