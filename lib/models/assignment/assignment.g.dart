// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assignment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AssignmentImpl _$$AssignmentImplFromJson(Map<String, dynamic> json) =>
    _$AssignmentImpl(
      available: json['available'] as bool,
      submitStatus:
          $enumDecodeNullable(_$SubmissionTypeEnumMap, json['submitStatus']),
      title: json['title'] as String?,
      description: json['description'] as String?,
      deadline: json['deadline'] == null
          ? null
          : DateTime.parse(json['deadline'] as String),
      gradingStatus: json['gradingStatus'] as String?,
      timeLeft: json['timeLeft'] as String?,
      lastModified: json['lastModified'] as String?,
    );

Map<String, dynamic> _$$AssignmentImplToJson(_$AssignmentImpl instance) =>
    <String, dynamic>{
      'available': instance.available,
      'submitStatus': _$SubmissionTypeEnumMap[instance.submitStatus],
      'title': instance.title,
      'description': instance.description,
      'deadline': instance.deadline?.toIso8601String(),
      'gradingStatus': instance.gradingStatus,
      'timeLeft': instance.timeLeft,
      'lastModified': instance.lastModified,
    };

const _$SubmissionTypeEnumMap = {
  SubmissionType.done: 'done',
  SubmissionType.late: 'late',
  SubmissionType.miss: 'miss',
  SubmissionType.unknown: 'unknown',
};
