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
      (state) => add(ChangeState(state: state)),
    );
    _logoutUseCase = LogoutUseCase(
      authenticationRepository: authenticationRepository,
    );

    on<ChangeState>(_onChangeState);
    on<Logout>(_onLogout);
  }

  final AuthenticationRepository authenticationRepository;
  late final StreamSubscription<AuthenticationState>
      _authenticationStatusSubscription;
  late final LogoutUseCase _logoutUseCase;

  @override
  Future<void> close() {
    _authenticationStatusSubscription.cancel();
    return super.close();
  }

  /// 인증 상태를 변경합니다.
  Future<void> _onChangeState(
    ChangeState event,
    Emitter<AuthenticationState> emit,
  ) async {
    emit(event.state);
  }

  /// 로그아웃 Use Case를 호출합니다.
  Future<void> _onLogout(
    Logout event,
    Emitter<AuthenticationState> emit,
  ) async {
    await _logoutUseCase.call();
  }
}
