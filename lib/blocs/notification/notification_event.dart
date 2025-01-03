import 'package:equatable/equatable.dart';

sealed class NotificationEvent extends Equatable {
  const NotificationEvent();

  @override
  List <Object?> get props => [];
}

/// 초기 알림 설정 이벤트입니다.
final class FetchNotification extends NotificationEvent {
  const FetchNotification();
}

/// 알림 설정 변경 이벤트입니다.
final class StatusChanged extends NotificationEvent {
  final bool isEnabled;

  const StatusChanged(this.isEnabled);

  @override
  List<Object> get props => [isEnabled];
}