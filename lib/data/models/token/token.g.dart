// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TokenReissueResponseImpl _$$TokenReissueResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$TokenReissueResponseImpl(
      accessToken: json['accessToken'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TokenReissueResponseImplToJson(
        _$TokenReissueResponseImpl instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'runtimeType': instance.$type,
    };

_$TokenReissueErrorImpl _$$TokenReissueErrorImplFromJson(
        Map<String, dynamic> json) =>
    _$TokenReissueErrorImpl(
      code: const ErrorCodeConverter().fromJson(json['code'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TokenReissueErrorImplToJson(
        _$TokenReissueErrorImpl instance) =>
    <String, dynamic>{
      'code': const ErrorCodeConverter().toJson(instance.code),
      'runtimeType': instance.$type,
    };
