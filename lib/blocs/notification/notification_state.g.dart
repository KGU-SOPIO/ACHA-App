// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationStateImpl _$$NotificationStateImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationStateImpl(
      isEnabled: json['isEnabled'] as bool? ?? false,
      status:
          $enumDecodeNullable(_$NotificationStatusEnumMap, json['status']) ??
              NotificationStatus.initial,
    );

Map<String, dynamic> _$$NotificationStateImplToJson(
        _$NotificationStateImpl instance) =>
    <String, dynamic>{
      'isEnabled': instance.isEnabled,
      'status': _$NotificationStatusEnumMap[instance.status]!,
    };

const _$NotificationStatusEnumMap = {
  NotificationStatus.initial: 'initial',
  NotificationStatus.loading: 'loading',
  NotificationStatus.success: 'success',
  NotificationStatus.failure: 'failure',
};
