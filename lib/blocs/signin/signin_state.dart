import 'package:freezed_annotation/freezed_annotation.dart';

part 'signin_state.freezed.dart';

enum SignInStatus { initial, signInProgress, signUpProgress, inSignUp, signInSuccess, signUpSuccess, signInFailure, signUpFailure }

@freezed
class SignInState with _$SignInState {
  const factory SignInState({
    @Default(SignInStatus.initial) SignInStatus status,
    String? studentId,
    String? password,
    String? name,
    String? college,
    String? department,
    String? major,
    String? errorMessage
  }) = _SignInState;
}