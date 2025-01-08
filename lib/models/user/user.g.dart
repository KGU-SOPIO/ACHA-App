// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      studentId: json['studentId'] as String,
      password: json['password'] as String,
      name: json['name'] as String,
      college: json['college'] as String,
      department: json['department'] as String,
      major: json['major'] as String?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'studentId': instance.studentId,
      'password': instance.password,
      'name': instance.name,
      'college': instance.college,
      'department': instance.department,
      'major': instance.major,
    };
