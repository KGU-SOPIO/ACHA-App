// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NoticeImpl _$$NoticeImplFromJson(Map<String, dynamic> json) => _$NoticeImpl(
      id: json['id'] as String,
      index: json['index'] as String,
      title: json['title'] as String,
      professor: json['professor'] as String,
      date: DateTime.parse(json['date'] as String),
      link: json['link'] as String?,
      content: json['content'] as String?,
      files: (json['files'] as List<dynamic>?)
          ?.map((e) => File.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextNoticeId: json['nextNoticeId'] as String?,
      nextNoticeTitle: json['nextNoticeTitle'] as String?,
      previousNoticeId: json['previousNoticeId'] as String?,
      previousNoticeTitle: json['previousNoticeTitle'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NoticeImplToJson(_$NoticeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'index': instance.index,
      'title': instance.title,
      'professor': instance.professor,
      'date': instance.date.toIso8601String(),
      'link': instance.link,
      'content': instance.content,
      'files': instance.files,
      'nextNoticeId': instance.nextNoticeId,
      'nextNoticeTitle': instance.nextNoticeTitle,
      'previousNoticeId': instance.previousNoticeId,
      'previousNoticeTitle': instance.previousNoticeTitle,
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
