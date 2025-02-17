// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      name: json['name'] as String,
      college: json['college'] as String,
      department: json['department'] as String?,
      major: json['major'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'college': instance.college,
      'department': instance.department,
      'major': instance.major,
      'runtimeType': instance.$type,
    };

_$UserErrorImpl _$$UserErrorImplFromJson(Map<String, dynamic> json) =>
    _$UserErrorImpl(
      code: const ErrorCodeConverter().fromJson(json['code'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UserErrorImplToJson(_$UserErrorImpl instance) =>
    <String, dynamic>{
      'code': const ErrorCodeConverter().toJson(instance.code),
      'runtimeType': instance.$type,
    };
