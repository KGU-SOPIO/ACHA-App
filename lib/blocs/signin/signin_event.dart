part of 'signin_bloc.dart';

sealed class SignInEvent extends Equatable {
  const SignInEvent();

  @override
  List<Object?> get props => [];
}

/// Stream 상태 변경 이벤트
final class _SignInStatusChanged extends SignInEvent {
  const _SignInStatusChanged(this.status);

  final SignInStatus status;
}

/// 학번 입력 이벤트
final class SignInStudentIdEntered extends SignInEvent {
  final String studentId;

  const SignInStudentIdEntered(this.studentId);

  @override
  List<Object> get props => [studentId];
}

/// 비밀번호 입력 이벤트
final class SignInPasswordEntered extends SignInEvent {
  final String password;

  const SignInPasswordEntered(this.password);

  @override
  List<Object> get props => [password];
}

/// 로그인 요청 이벤트
final class SignInSubmitted extends SignInEvent {
  const SignInSubmitted();
}

/// 회원가입 요청 이벤트
final class SignUpSubmitted extends SignInEvent {
  const SignUpSubmitted();
}