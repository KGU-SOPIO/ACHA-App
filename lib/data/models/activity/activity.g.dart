// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseActivityListImpl _$$CourseActivityListImplFromJson(
        Map<String, dynamic> json) =>
    _$CourseActivityListImpl(
      contents: (json['contents'] as List<dynamic>)
          .map((e) => ActivityList.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CourseActivityListImplToJson(
        _$CourseActivityListImpl instance) =>
    <String, dynamic>{
      'contents': instance.contents,
      'runtimeType': instance.$type,
    };

_$CourseActivityListErrorImpl _$$CourseActivityListErrorImplFromJson(
        Map<String, dynamic> json) =>
    _$CourseActivityListErrorImpl(
      code: const ErrorCodeConverter().fromJson(json['code'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CourseActivityListErrorImplToJson(
        _$CourseActivityListErrorImpl instance) =>
    <String, dynamic>{
      'code': const ErrorCodeConverter().toJson(instance.code),
      'runtimeType': instance.$type,
    };

_$ActivityListImpl _$$ActivityListImplFromJson(Map<String, dynamic> json) =>
    _$ActivityListImpl(
      week: (json['week'] as num?)?.toInt(),
      contents: (json['contents'] as List<dynamic>)
          .map((e) => Activity.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ActivityListImplToJson(_$ActivityListImpl instance) =>
    <String, dynamic>{
      'week': instance.week,
      'contents': instance.contents,
      'runtimeType': instance.$type,
    };

_$ActivityListErrorImpl _$$ActivityListErrorImplFromJson(
        Map<String, dynamic> json) =>
    _$ActivityListErrorImpl(
      code: const ErrorCodeConverter().fromJson(json['code'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ActivityListErrorImplToJson(
        _$ActivityListErrorImpl instance) =>
    <String, dynamic>{
      'code': const ErrorCodeConverter().toJson(instance.code),
      'runtimeType': instance.$type,
    };

_$ActivityImpl _$$ActivityImplFromJson(Map<String, dynamic> json) =>
    _$ActivityImpl(
      type: $enumDecode(_$ActivityTypeEnumMap, json['type']),
      available: json['available'] as bool,
      title: json['title'] as String,
      link: json['link'] as String?,
      code: json['code'] as String?,
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
      'title': instance.title,
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
