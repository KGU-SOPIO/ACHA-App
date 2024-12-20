part of 'authentication_bloc.dart';

sealed class AuthenticationEvent {
  const AuthenticationEvent();
}

/// Stream 인증 상태 변경 이벤트
final class _AuthentacationStatusChanged extends AuthenticationEvent {
  const _AuthentacationStatusChanged(this.status);

  final AuthenticationStatus status;
}

/// 로그아웃 이벤트
final class _AuthenticationLogoutRequested extends AuthenticationEvent {}