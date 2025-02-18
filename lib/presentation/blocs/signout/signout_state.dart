import 'package:freezed_annotation/freezed_annotation.dart';

part 'signout_state.freezed.dart';

enum SignOutStatus { initial, loading, complete, error }

@freezed
class SignOutState with _$SignOutState {
  const factory SignOutState({
    required SignOutStatus status,
    String? errorMessage,
  }) = _SignOutState;
}
