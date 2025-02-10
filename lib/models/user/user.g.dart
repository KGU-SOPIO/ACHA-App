// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      name: json['name'] as String,
      college: json['college'] as String,
      department: json['department'] as String?,
      major: json['major'] as String?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'college': instance.college,
      'department': instance.department,
      'major': instance.major,
    };

_$UserDataImpl _$$UserDataImplFromJson(Map<String, dynamic> json) =>
    _$UserDataImpl(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UserDataImplToJson(_$UserDataImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'runtimeType': instance.$type,
    };

_$UserErrorImpl _$$UserErrorImplFromJson(Map<String, dynamic> json) =>
    _$UserErrorImpl(
      code: const ResponseCodeConverter().fromJson(json['code'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UserErrorImplToJson(_$UserErrorImpl instance) =>
    <String, dynamic>{
      'code': const ResponseCodeConverter().toJson(instance.code),
      'runtimeType': instance.$type,
    };
