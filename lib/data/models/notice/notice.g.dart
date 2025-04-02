// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NoticeImpl _$$NoticeImplFromJson(Map<String, dynamic> json) => _$NoticeImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      professor: json['professor'] as String,
      date: DateTime.parse(json['date'] as String),
      index: json['index'] as String?,
      content: json['content'] as String?,
      files: (json['files'] as List<dynamic>?)
          ?.map((e) => File.fromJson(e as Map<String, dynamic>))
          .toList(),
      prev: json['prev'] == null
          ? null
          : NoticeReference.fromJson(json['prev'] as Map<String, dynamic>),
      next: json['next'] == null
          ? null
          : NoticeReference.fromJson(json['next'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NoticeImplToJson(_$NoticeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'professor': instance.professor,
      'date': instance.date.toIso8601String(),
      'index': instance.index,
      'content': instance.content,
      'files': instance.files,
      'prev': instance.prev,
      'next': instance.next,
      'runtimeType': instance.$type,
    };

_$NoticeErrorImpl _$$NoticeErrorImplFromJson(Map<String, dynamic> json) =>
    _$NoticeErrorImpl(
      code: const ErrorCodeConverter().fromJson(json['code'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NoticeErrorImplToJson(_$NoticeErrorImpl instance) =>
    <String, dynamic>{
      'code': const ErrorCodeConverter().toJson(instance.code),
      'runtimeType': instance.$type,
    };

_$NoticeReferenceImpl _$$NoticeReferenceImplFromJson(
        Map<String, dynamic> json) =>
    _$NoticeReferenceImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NoticeReferenceImplToJson(
        _$NoticeReferenceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'runtimeType': instance.$type,
    };

_$NoticeReferenceErrorImpl _$$NoticeReferenceErrorImplFromJson(
        Map<String, dynamic> json) =>
    _$NoticeReferenceErrorImpl(
      code: const ErrorCodeConverter().fromJson(json['code'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NoticeReferenceErrorImplToJson(
        _$NoticeReferenceErrorImpl instance) =>
    <String, dynamic>{
      'code': const ErrorCodeConverter().toJson(instance.code),
      'runtimeType': instance.$type,
    };
