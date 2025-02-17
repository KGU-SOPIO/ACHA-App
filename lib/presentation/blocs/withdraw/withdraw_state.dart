import 'package:freezed_annotation/freezed_annotation.dart';

part 'withdraw_state.freezed.dart';

enum WithdrawStatus { initial, loading, complete, error }

@freezed
class WithdrawState with _$WithdrawState {
  const factory WithdrawState({
    required WithdrawStatus status,
    String? errorMessage,
  }) = _WithdrawState;
}
