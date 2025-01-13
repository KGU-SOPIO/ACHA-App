import 'dart:async';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:acha/blocs/auth/index.dart';

import 'package:acha/repository/index.dart';

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc({required this.authenticationRepository}) : super(const AuthenticationState.unknown()) {
    on<StatusChanged>(_onAuthenticationStatusChanged);
    on<Logout>(_onAuthenticationLogoutRequested);

    _authenticationStatusSubscription = authenticationRepository.authStatus.listen(
      (status) => add(StatusChanged(status))
    );
  }

  final AuthenticationRepository authenticationRepository;
  late final StreamSubscription<AuthenticationStatus> _authenticationStatusSubscription;

  @override
  Future<void> close() {
    _authenticationStatusSubscription.cancel();
    return super.close();
  }

  /// 인증 상태 변화를 감지합니다.
  Future<void> _onAuthenticationStatusChanged(StatusChanged event, Emitter<AuthenticationState> emit) async {
    debugPrint("Authentication Status: ${event.status.toString()}");
    switch (event.status) {
      case AuthenticationStatus.unauthenticated:
        emit(const AuthenticationState.unauthenticated());
        break;
      case AuthenticationStatus.authenticated:
        emit(AuthenticationState.authenticated());
        break;
      case AuthenticationStatus.unknown:
        emit(const AuthenticationState.unknown());
        break;
    }
  }

  /// 로그아웃합니다.
  void _onAuthenticationLogoutRequested(Logout event, Emitter<AuthenticationState> emit) {
    authenticationRepository.logout();
  }
}