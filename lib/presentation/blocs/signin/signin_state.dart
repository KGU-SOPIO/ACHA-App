import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:acha/data/models/index.dart';

part 'signin_state.freezed.dart';

enum SignInStatus {
  // 인증 초기 및 로그인 요청 상태
  inSignIn('인증하는 중'),
  // 로그인 응답 대기 상태
  signInProgress('인증하는 중'),
  // 로그인 성공 및 실패 상태
  signInSuccess('인증 완료'),
  signInFailure('인증 실패'),
  // 학생 정보 요청 상태
  inFetchUser('인증하는 중'),
  // 학생 정보 응답 대기 상태
  fetchUserProgress('인증하는 중'),
  // 학생 정보 성공 및 실패 상태
  fetchUserSuccess('인증 완료'),
  fetchUserFailure('인증 실패'),
  // 회원가입 요청 상태
  inSignUp('회원가입 중'),
  // 회원가입 요청 및 응답 대기 상태
  signUpProgress('회원가입 중'),
  // 회원가입 성공 및 실패 상태
  signUpFailure('회원가입 실패'),
  // 추출 요청 상태
  inFetchData('불러오는 중'),
  // 추출 요청 대기 상태
  fetchDataProgress('불러오는 중'),
  // 추출 성공 및 실패 상태
  fetchDataSuccess('불러오기 성공'),
  fetchDataFailure('불러오기 실패'),
  // 쿠티스 비밀번호 오류 상태
  kutisPasswordError('불러오기 실패');

  final String description;

  const SignInStatus(this.description);
}

@freezed
class SignInState with _$SignInState {
  const factory SignInState({
    @Default(SignInStatus.inSignIn) SignInStatus status,
    @Default(true) bool extract,
    String? studentId,
    String? password,
    User? user,
    String? errorMessage,
  }) = _SignInState;
}
