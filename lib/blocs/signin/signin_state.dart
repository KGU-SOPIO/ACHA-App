import 'package:freezed_annotation/freezed_annotation.dart';

part 'signin_state.freezed.dart';

enum SignInStatus {
  initial('미인증'),
  signInProgress('인증하는 중'),
  signUpProgress('회원가입 중'),
  inSignUp('인증 완료'),
  signInSuccess('로그인 완료'),
  signUpSuccess('회원가입 완료'),
  signInFailure('로그인 실패'),
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
    String? name,
    String? college,
    String? department,
    String? major,
    String? errorMessage
  }) = _SignInState;
}