// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseImpl _$$CourseImplFromJson(Map<String, dynamic> json) => _$CourseImpl(
      name: json['name'] as String,
      link: json['link'] as String,
      code: json['code'] as String,
      professor: json['professor'] as String,
      lectureRoom: json['lectureRoom'] as String,
      activities: (json['activities'] as List<dynamic>)
          .map((e) => (e as List<dynamic>)
              .map((e) => Activity.fromJson(e as Map<String, dynamic>))
              .toList())
          .toList(),
    );

Map<String, dynamic> _$$CourseImplToJson(_$CourseImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'link': instance.link,
      'code': instance.code,
      'professor': instance.professor,
      'lectureRoom': instance.lectureRoom,
      'activities': instance.activities,
    };
