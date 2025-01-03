// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ActivityImpl _$$ActivityImplFromJson(Map<String, dynamic> json) =>
    _$ActivityImpl(
      activityType: $enumDecode(_$ActivityTypeEnumMap, json['activityType']),
      name: json['name'] as String?,
      link: json['link'] as String?,
      code: json['code'] as String?,
      deadline: json['deadline'] == null
          ? null
          : DateTime.parse(json['deadline'] as String),
      lectureTime: json['lectureTime'] as String?,
      gradingStatus: json['gradingStatus'] as String?,
      timeLeft: json['timeLeft'] as String?,
      lastModified: json['lastModified'] as String?,
      description: json['description'] as String?,
      isAvailable: json['isAvailable'] as bool?,
    );

Map<String, dynamic> _$$ActivityImplToJson(_$ActivityImpl instance) =>
    <String, dynamic>{
      'activityType': _$ActivityTypeEnumMap[instance.activityType]!,
      'name': instance.name,
      'link': instance.link,
      'code': instance.code,
      'deadline': instance.deadline?.toIso8601String(),
      'lectureTime': instance.lectureTime,
      'gradingStatus': instance.gradingStatus,
      'timeLeft': instance.timeLeft,
      'lastModified': instance.lastModified,
      'description': instance.description,
      'isAvailable': instance.isAvailable,
    };

const _$ActivityTypeEnumMap = {
  ActivityType.file: 'file',
  ActivityType.video: 'video',
  ActivityType.assignment: 'assignment',
  ActivityType.survey: 'survey',
  ActivityType.board: 'board',
  ActivityType.url: 'url',
  ActivityType.text: 'text',
};
