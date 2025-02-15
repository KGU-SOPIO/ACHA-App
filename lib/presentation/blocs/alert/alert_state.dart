import 'package:freezed_annotation/freezed_annotation.dart';

part 'alert_state.freezed.dart';

enum AlertStatus { loading, loaded, changed, denied, error }

@freezed
class AlertState with _$AlertState {
  const factory AlertState(
      {required AlertStatus status,
      @Default(true) bool isEnabled,
      String? message}) = _AlertState;
}
