import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:acha/domain/usecases/index.dart';
import 'package:acha/domain/repositories/index.dart';
import 'package:acha/presentation/blocs/index.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc({
    required this.authenticationRepository,
  }) : super(const AuthenticationState.unknown()) {
    _authenticationStatusSubscription =
        authenticationRepository.authStream.listen(
      (status) => add(ChangeStatus(status: status)),
    );
    _logoutUseCase = LogoutUseCase(
      authenticationRepository: authenticationRepository,
    );

    on<ChangeStatus>(_onChangeAuthenticationStatus);
    on<Logout>(_onLogout);
  }

  final AuthenticationRepository authenticationRepository;
  late final StreamSubscription<AuthenticationStatus>
      _authenticationStatusSubscription;
  late final LogoutUseCase _logoutUseCase;

  @override
  Future<void> close() {
    _authenticationStatusSubscription.cancel();
    return super.close();
  }

  /// 인증 상태 변화를 감지합니다.
  Future<void> _onChangeAuthenticationStatus(
    ChangeStatus event,
    Emitter<AuthenticationState> emit,
  ) async {
    switch (event.status) {
      case AuthenticationStatus.unauthenticated:
        emit(const AuthenticationState.unauthenticated());
        break;
      case AuthenticationStatus.authenticated:
        emit(const AuthenticationState.authenticated());
        break;
      case AuthenticationStatus.registered:
        emit(const AuthenticationState.registered());
        break;
      case AuthenticationStatus.expired:
        emit(const AuthenticationState.expired());
        break;
      case AuthenticationStatus.error:
        emit(const AuthenticationState.error());
        break;
      case AuthenticationStatus.unknown:
        emit(const AuthenticationState.unknown());
        break;
    }
  }

  /// 로그아웃합니다.
  Future<void> _onLogout(
    Logout event,
    Emitter<AuthenticationState> emit,
  ) async {
    await _logoutUseCase.call();
  }
}
