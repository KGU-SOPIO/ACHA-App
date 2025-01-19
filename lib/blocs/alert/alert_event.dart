import 'package:freezed_annotation/freezed_annotation.dart';

part 'alert_event.freezed.dart';

@freezed
class AlertEvent with _$AlertEvent {
  const factory AlertEvent.fetch() = Fetch;
  const factory AlertEvent.deny() = Deny;
  const factory AlertEvent.statusChanged({required bool isEnabled}) = StatusChanged;
}