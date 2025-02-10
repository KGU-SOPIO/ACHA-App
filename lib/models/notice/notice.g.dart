// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NoticeListImpl _$$NoticeListImplFromJson(Map<String, dynamic> json) =>
    _$NoticeListImpl(
      notices: (json['notices'] as List<dynamic>)
          .map((e) => Notice.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$NoticeListImplToJson(_$NoticeListImpl instance) =>
    <String, dynamic>{
      'notices': instance.notices,
    };

_$NoticeImpl _$$NoticeImplFromJson(Map<String, dynamic> json) => _$NoticeImpl(
      id: (json['id'] as num).toInt(),
      index: json['index'] as String,
      title: json['title'] as String,
      professor: json['professor'] as String,
      date: DateTime.parse(json['date'] as String),
      link: json['link'] as String?,
      content: json['content'] as String?,
      files: (json['files'] as List<dynamic>?)
          ?.map((e) => File.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextNoticeId: (json['nextNoticeId'] as num?)?.toInt(),
      nextNoticeTitle: json['nextNoticeTitle'] as String?,
      previousNoticeId: (json['previousNoticeId'] as num?)?.toInt(),
      previousNoticeTitle: json['previousNoticeTitle'] as String?,
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
    };

_$FileImpl _$$FileImplFromJson(Map<String, dynamic> json) => _$FileImpl(
      name: json['name'] as String,
      link: json['link'] as String,
    );

Map<String, dynamic> _$$FileImplToJson(_$FileImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'link': instance.link,
    };
