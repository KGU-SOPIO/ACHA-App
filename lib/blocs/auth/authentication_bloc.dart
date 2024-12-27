library;

import 'dart:async';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:acha/repository/user.dart';
import 'package:acha/repository/authentication.dart';
import 'package:acha/models/user/user.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc({
    required this.authenticationRepository,
    required this.userRepository
  }) : super(const AuthenticationState.unknown()) {
    on<_AuthentacationStatusChanged>(_onAuthenticationStatusChanged);
    on<_AuthenticationLogoutRequested>(_onAuthenticationLogoutRequested);

    _authenticationStatusSubscription = authenticationRepository.authStatus.listen(
      (status) => add(_AuthentacationStatusChanged(status))
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

  Future<void> _onAuthenticationStatusChanged(_AuthentacationStatusChanged event, Emitter<AuthenticationState> emit) async {
    debugPrint("Authentication Status: ${event.status.toString()}");
    switch (event.status) {
      case AuthenticationStatus.unauthenticated:
        emit(const AuthenticationState.unauthenticated());
        break;
      case AuthenticationStatus.authenticated:
        final user = await userRepository.getUser();
        emit(user != null ? AuthenticationState.authenticated(user) : const AuthenticationState.unauthenticated());
        break;
      case AuthenticationStatus.unknown:
        emit(const AuthenticationState.unknown());
        break;
    }
  }

  void _onAuthenticationLogoutRequested(_AuthenticationLogoutRequested event, Emitter<AuthenticationState> emit) {
    authenticationRepository.logout();
  }
}