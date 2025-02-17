// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FileImpl _$$FileImplFromJson(Map<String, dynamic> json) => _$FileImpl(
      name: json['name'] as String,
      link: json['link'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$FileImplToJson(_$FileImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'link': instance.link,
      'runtimeType': instance.$type,
    };

_$FileErrorImpl _$$FileErrorImplFromJson(Map<String, dynamic> json) =>
    _$FileErrorImpl(
      code: const ErrorCodeConverter().fromJson(json['code'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$FileErrorImplToJson(_$FileErrorImpl instance) =>
    <String, dynamic>{
      'code': const ErrorCodeConverter().toJson(instance.code),
      'runtimeType': instance.$type,
    };
