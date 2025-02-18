import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:acha/domain/usecases/index.dart';
import 'package:acha/domain/repositories/index.dart';
import 'package:acha/presentation/blocs/index.dart';

class SignOutBloc extends Bloc<SignOutEvent, SignOutState> {
  SignOutBloc({
    required AuthenticationRepository authenticationRepository,
  }) : super(const SignOutState(status: SignOutStatus.initial)) {
    _signOutUseCase = SignOutUseCase(
      authenticationRepository: authenticationRepository,
    );

    on<SubmitSignOut>(_onSubmitSignOut);
  }

  late final SignOutUseCase _signOutUseCase;

  Future<void> _onSubmitSignOut(
    SubmitSignOut event,
    Emitter<SignOutState> emit,
  ) async {
    try {
      emit(state.copyWith(status: SignOutStatus.loading));

      final result = await _signOutUseCase.call(password: event.password);
      result.fold(
        (errorMessage) => emit(state.copyWith(
          status: SignOutStatus.error,
          errorMessage: errorMessage,
        )),
        (value) => emit(state.copyWith(
          status: SignOutStatus.complete,
        )),
      );
    } catch (e) {
      emit(state.copyWith(
        status: SignOutStatus.error,
        errorMessage: '계정을 삭제하지 못했어요',
      ));
    }
  }
}
