part of 'signin_bloc.dart';

/// Use when executing build_runner command
// import 'package:freezed_annotation/freezed_annotation.dart';
//
// part 'signin_state.freezed.dart';
// part 'signin_state.g.dart';

enum SignInStatus { initial, signInProgress, signUpProgress, inSignUp, signInSuccess, signUpSuccess, signInFailure, signUpFailure }

@freezed
class SignInState with _$SignInState {
  const factory SignInState({
    String? studentId,
    String? password,
    String? name,
    String? college,
    String? department,
    String? major,
    @Default(SignInStatus.initial) SignInStatus status
  }) = _SignInState;

  factory SignInState.fromJson(Map<String, dynamic> json) => _$SignInStateFromJson(json);
}