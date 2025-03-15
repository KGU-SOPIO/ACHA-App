// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notice_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NoticeListImpl _$$NoticeListImplFromJson(Map<String, dynamic> json) =>
    _$NoticeListImpl(
      contents: (json['contents'] as List<dynamic>)
          .map((e) => Notice.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NoticeListImplToJson(_$NoticeListImpl instance) =>
    <String, dynamic>{
      'contents': instance.contents,
      'runtimeType': instance.$type,
    };

_$NoticeListErrorImpl _$$NoticeListErrorImplFromJson(
        Map<String, dynamic> json) =>
    _$NoticeListErrorImpl(
      code: const ErrorCodeConverter().fromJson(json['code'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NoticeListErrorImplToJson(
        _$NoticeListErrorImpl instance) =>
    <String, dynamic>{
      'code': const ErrorCodeConverter().toJson(instance.code),
      'runtimeType': instance.$type,
    };
