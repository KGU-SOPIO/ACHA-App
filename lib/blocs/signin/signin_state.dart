import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:acha/models/index.dart';

part 'signin_state.freezed.dart';

enum SignInStatus {
  initial('미인증'),
  signInProgress('인증하는 중'),
  fetchUserProgress('인증하는 중'),
  signUpProgress('회원가입 중'),
  inFetchUser('인증하는 중'),
  inSignUp('인증 완료'),
  signInSuccess('인증 완료'),
  signUpSuccess('회원가입 완료'),
  signInFailure('인증 실패'),
  fetchUserFailure('인증 실패'),
  signUpFailure('회원가입 실패');

  final String description;

  const SignInStatus(this.description);
}

@freezed
class SignInState with _$SignInState {
  const factory SignInState({
    @Default(SignInStatus.initial) SignInStatus status,
    String? studentId,
    String? password,
    User? user,
    String? errorMessage
  }) = _SignInState;
}