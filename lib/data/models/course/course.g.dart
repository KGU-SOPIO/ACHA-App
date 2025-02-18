// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseImpl _$$CourseImplFromJson(Map<String, dynamic> json) => _$CourseImpl(
      title: json['title'] as String,
      professor: json['professor'] as String,
      lectureRoom: json['lectureRoom'] as String,
      id: (json['id'] as num).toInt(),
      deadline: json['deadline'] == null
          ? null
          : DateTime.parse(json['deadline'] as String),
      link: json['link'] as String?,
      courseActivityList: json['courseActivityList'] == null
          ? null
          : CourseActivityList.fromJson(
              json['courseActivityList'] as Map<String, dynamic>),
      noticeList: json['noticeList'] == null
          ? null
          : NoticeList.fromJson(json['noticeList'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CourseImplToJson(_$CourseImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'professor': instance.professor,
      'lectureRoom': instance.lectureRoom,
      'id': instance.id,
      'deadline': instance.deadline?.toIso8601String(),
      'link': instance.link,
      'courseActivityList': instance.courseActivityList,
      'noticeList': instance.noticeList,
      'runtimeType': instance.$type,
    };

_$CourseErrorImpl _$$CourseErrorImplFromJson(Map<String, dynamic> json) =>
    _$CourseErrorImpl(
      code: const ErrorCodeConverter().fromJson(json['code'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CourseErrorImplToJson(_$CourseErrorImpl instance) =>
    <String, dynamic>{
      'code': const ErrorCodeConverter().toJson(instance.code),
      'runtimeType': instance.$type,
    };
