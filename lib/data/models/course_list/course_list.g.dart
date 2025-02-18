// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseListImpl _$$CourseListImplFromJson(Map<String, dynamic> json) =>
    _$CourseListImpl(
      contents: (json['contents'] as List<dynamic>)
          .map((e) => Course.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CourseListImplToJson(_$CourseListImpl instance) =>
    <String, dynamic>{
      'contents': instance.contents,
      'runtimeType': instance.$type,
    };

_$CourseListErrorImpl _$$CourseListErrorImplFromJson(
        Map<String, dynamic> json) =>
    _$CourseListErrorImpl(
      code: const ErrorCodeConverter().fromJson(json['code'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CourseListErrorImplToJson(
        _$CourseListErrorImpl instance) =>
    <String, dynamic>{
      'code': const ErrorCodeConverter().toJson(instance.code),
      'runtimeType': instance.$type,
    };
