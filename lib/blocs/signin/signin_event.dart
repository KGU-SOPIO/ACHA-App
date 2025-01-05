import 'package:equatable/equatable.dart';

import 'package:acha/blocs/signin/index.dart';

sealed class SignInEvent extends Equatable {
  const SignInEvent();

  @override
  List<Object?> get props => [];
}

/// Stream 로그인 상태 변경 이벤트입니다.
final class SignInStatusChanged extends SignInEvent {
  final SignInStatus status;
  
  const SignInStatusChanged(this.status);
}

/// 학번 입력 이벤트입니다.
final class SignInStudentIdEntered extends SignInEvent {
  final String studentId;

  const SignInStudentIdEntered(this.studentId);

  @override
  List<Object> get props => [studentId];
}

/// 비밀번호 입력 이벤트입니다.
final class SignInPasswordEntered extends SignInEvent {
  final String password;

  const SignInPasswordEntered(this.password);

  @override
  List<Object> get props => [password];
}

/// 로그인 요청 이벤트입니다.
final class SignInSubmitted extends SignInEvent {
  const SignInSubmitted();
}

/// 회원가입 요청 이벤트입니다.
final class SignUpSubmitted extends SignInEvent {
  const SignUpSubmitted();
}