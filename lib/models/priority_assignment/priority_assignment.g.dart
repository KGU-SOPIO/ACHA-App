// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'priority_assignment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PriorityAssignmentsImpl _$$PriorityAssignmentsImplFromJson(
        Map<String, dynamic> json) =>
    _$PriorityAssignmentsImpl(
      assignments: (json['assignments'] as List<dynamic>?)
          ?.map((e) => PriorityAssignment.fromJson(e as Map<String, dynamic>))
          .toList(),
      deadline: json['deadline'] == null
          ? null
          : DateTime.parse(json['deadline'] as String),
    );

Map<String, dynamic> _$$PriorityAssignmentsImplToJson(
        _$PriorityAssignmentsImpl instance) =>
    <String, dynamic>{
      'assignments': instance.assignments,
      'deadline': instance.deadline?.toIso8601String(),
    };

_$PriorityAssignmentImpl _$$PriorityAssignmentImplFromJson(
        Map<String, dynamic> json) =>
    _$PriorityAssignmentImpl(
      title: json['title'] as String,
      course: json['course'] as String,
      courseCode: json['courseCode'] as String,
      deadline: DateTime.parse(json['deadline'] as String),
    );

Map<String, dynamic> _$$PriorityAssignmentImplToJson(
        _$PriorityAssignmentImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'course': instance.course,
      'courseCode': instance.courseCode,
      'deadline': instance.deadline.toIso8601String(),
    };
