import 'package:freezed_annotation/freezed_annotation.dart';

part 'withdraw_event.freezed.dart';

@freezed
class WithdrawEvent with _$WithdrawEvent {
  const factory WithdrawEvent.withdraw({required String password}) = Withdraw;
}
