// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthenticationSuccessResponseImpl
    _$$AuthenticationSuccessResponseImplFromJson(Map<String, dynamic> json) =>
        _$AuthenticationSuccessResponseImpl(
          accessToken: json['accessToken'] as String,
          refreshToken: json['refreshToken'] as String,
          $type: json['result'] as String?,
        );

Map<String, dynamic> _$$AuthenticationSuccessResponseImplToJson(
        _$AuthenticationSuccessResponseImpl instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'result': instance.$type,
    };

_$AuthenticationSignUpResponseImpl _$$AuthenticationSignUpResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthenticationSignUpResponseImpl(
      name: json['name'] as String,
      college: json['college'] as String,
      department: json['department'] as String,
      major: json['major'] as String?,
      $type: json['result'] as String?,
    );

Map<String, dynamic> _$$AuthenticationSignUpResponseImplToJson(
        _$AuthenticationSignUpResponseImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'college': instance.college,
      'department': instance.department,
      'major': instance.major,
      'result': instance.$type,
    };

_$AuthenticationRefreshResponseImpl
    _$$AuthenticationRefreshResponseImplFromJson(Map<String, dynamic> json) =>
        _$AuthenticationRefreshResponseImpl(
          accessToken: json['accessToken'] as String,
          $type: json['result'] as String?,
        );

Map<String, dynamic> _$$AuthenticationRefreshResponseImplToJson(
        _$AuthenticationRefreshResponseImpl instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'result': instance.$type,
    };
