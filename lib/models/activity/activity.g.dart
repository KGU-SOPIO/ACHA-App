// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseActivitiesImpl _$$CourseActivitiesImplFromJson(
        Map<String, dynamic> json) =>
    _$CourseActivitiesImpl(
      weekActivities: (json['weekActivities'] as List<dynamic>)
          .map((e) => WeekActivities.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CourseActivitiesImplToJson(
        _$CourseActivitiesImpl instance) =>
    <String, dynamic>{
      'weekActivities': instance.weekActivities,
    };

_$WeekActivitiesImpl _$$WeekActivitiesImplFromJson(Map<String, dynamic> json) =>
    _$WeekActivitiesImpl(
      week: (json['week'] as num).toInt(),
      activities: (json['activities'] as List<dynamic>)
          .map((e) => Activity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WeekActivitiesImplToJson(
        _$WeekActivitiesImpl instance) =>
    <String, dynamic>{
      'week': instance.week,
      'activities': instance.activities,
    };

_$ActivityImpl _$$ActivityImplFromJson(Map<String, dynamic> json) =>
    _$ActivityImpl(
      type: $enumDecode(_$ActivityTypeEnumMap, json['type']),
      available: json['available'] as bool,
      name: json['name'] as String,
      link: json['link'] as String,
      code: json['code'] as String,
      deadline: json['deadline'] == null
          ? null
          : DateTime.parse(json['deadline'] as String),
      lectureTime: json['lectureTime'] as String?,
      attendance: json['attendance'] as bool?,
      gradingStatus: json['gradingStatus'] as String?,
      timeLeft: json['timeLeft'] as String?,
      lastModified: json['lastModified'] as String?,
      description: json['description'] as String?,
      courseName: json['courseName'] as String?,
    );

Map<String, dynamic> _$$ActivityImplToJson(_$ActivityImpl instance) =>
    <String, dynamic>{
      'type': _$ActivityTypeEnumMap[instance.type]!,
      'available': instance.available,
      'name': instance.name,
      'link': instance.link,
      'code': instance.code,
      'deadline': instance.deadline?.toIso8601String(),
      'lectureTime': instance.lectureTime,
      'attendance': instance.attendance,
      'gradingStatus': instance.gradingStatus,
      'timeLeft': instance.timeLeft,
      'lastModified': instance.lastModified,
      'description': instance.description,
      'courseName': instance.courseName,
    };

const _$ActivityTypeEnumMap = {
  ActivityType.url: 'url',
  ActivityType.file: 'file',
  ActivityType.lecture: 'lecture',
  ActivityType.assignment: 'assignment',
};
