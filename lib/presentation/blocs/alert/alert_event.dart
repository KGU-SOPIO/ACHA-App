import 'package:freezed_annotation/freezed_annotation.dart';

part 'alert_event.freezed.dart';

@freezed
class AlertEvent with _$AlertEvent {
  const factory AlertEvent.fetchAlertStatus() = FetchAlertStatus;
  const factory AlertEvent.denyAlert() = DenyAlert;
  const factory AlertEvent.changeAlertStatus({
    required bool isEnabled,
  }) = ChangeAlertStatus;
}
