import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_state.freezed.dart';
part 'notification_state.g.dart';

enum NotificationStatus {initial, loading, success, failure}

@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState({
    @Default(false) bool isEnabled,
    @Default(NotificationStatus.initial) NotificationStatus status,
  }) = _NotificationState;

  factory NotificationState.fromJson(Map<String, dynamic> json) => _$NotificationStateFromJson(json);
}