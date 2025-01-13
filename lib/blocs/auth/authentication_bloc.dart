import 'dart:async';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:acha/blocs/auth/index.dart';

import 'package:acha/repository/index.dart';

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc({required this.authenticationRepository, required this.userRepository}) : super(const AuthenticationState.unknown()) {
    on<AuthenticationStatusChanged>(_onAuthenticationStatusChanged);
    on<Logout>(_onAuthenticationLogoutRequested);

    _authenticationStatusSubscription = authenticationRepository.authStatus.listen(
      (status) => add(AuthenticationStatusChanged(status))
    );
  }

  final UserRepository userRepository;
  final AuthenticationRepository authenticationRepository;
  late final StreamSubscription<AuthenticationStatus> _authenticationStatusSubscription;

  @override
  Future<void> close() {
    _authenticationStatusSubscription.cancel();
    return super.close();
  }

  Future<void> _onAuthenticationStatusChanged(AuthenticationStatusChanged event, Emitter<AuthenticationState> emit) async {
    debugPrint("Authentication Status: ${event.status.toString()}");
    switch (event.status) {
      case AuthenticationStatus.unauthenticated:
        emit(const AuthenticationState.unauthenticated());
        break;
      case AuthenticationStatus.authenticated:
        final user = await userRepository.getUser();
        emit(user != null ? AuthenticationState.authenticated(user: user) : const AuthenticationState.unauthenticated());
        break;
      case AuthenticationStatus.unknown:
        emit(const AuthenticationState.unknown());
        break;
    }
  }

  void _onAuthenticationLogoutRequested(Logout event, Emitter<AuthenticationState> emit) {
    authenticationRepository.logout();
  }
}