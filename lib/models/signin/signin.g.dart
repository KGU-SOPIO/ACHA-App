// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signin.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignInSuccessImpl _$$SignInSuccessImplFromJson(Map<String, dynamic> json) =>
    _$SignInSuccessImpl(
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SignInSuccessImplToJson(_$SignInSuccessImpl instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'runtimeType': instance.$type,
    };

_$FetchUserDataImpl _$$FetchUserDataImplFromJson(Map<String, dynamic> json) =>
    _$FetchUserDataImpl(
      code: const ResponseCodeConverter().fromJson(json['code'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$FetchUserDataImplToJson(_$FetchUserDataImpl instance) =>
    <String, dynamic>{
      'code': const ResponseCodeConverter().toJson(instance.code),
      'runtimeType': instance.$type,
    };
