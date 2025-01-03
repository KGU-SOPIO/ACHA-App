// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signin_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignInStateImpl _$$SignInStateImplFromJson(Map<String, dynamic> json) =>
    _$SignInStateImpl(
      studentId: json['studentId'] as String?,
      password: json['password'] as String?,
      name: json['name'] as String?,
      college: json['college'] as String?,
      department: json['department'] as String?,
      major: json['major'] as String?,
      status: $enumDecodeNullable(_$SignInStatusEnumMap, json['status']) ??
          SignInStatus.initial,
    );

Map<String, dynamic> _$$SignInStateImplToJson(_$SignInStateImpl instance) =>
    <String, dynamic>{
      'studentId': instance.studentId,
      'password': instance.password,
      'name': instance.name,
      'college': instance.college,
      'department': instance.department,
      'major': instance.major,
      'status': _$SignInStatusEnumMap[instance.status]!,
    };

const _$SignInStatusEnumMap = {
  SignInStatus.initial: 'initial',
  SignInStatus.signInProgress: 'signInProgress',
  SignInStatus.signUpProgress: 'signUpProgress',
  SignInStatus.inSignUp: 'inSignUp',
  SignInStatus.signInSuccess: 'signInSuccess',
  SignInStatus.signUpSuccess: 'signUpSuccess',
  SignInStatus.signInFailure: 'signInFailure',
  SignInStatus.signUpFailure: 'signUpFailure',
};
