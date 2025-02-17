import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:acha/domain/usecases/index.dart';
import 'package:acha/domain/repositories/index.dart';
import 'package:acha/presentation/blocs/index.dart';

class WithdrawBloc extends Bloc<WithdrawEvent, WithdrawState> {
  WithdrawBloc({
    required AuthenticationRepository authenticationRepository,
  }) : super(const WithdrawState(status: WithdrawStatus.initial)) {
    _withdrawUseCase = WithdrawUseCase(
      authenticationRepository: authenticationRepository,
    );

    on<Withdraw>(_onWithdraw);
  }

  late final WithdrawUseCase _withdrawUseCase;

  Future<void> _onWithdraw(
    Withdraw event,
    Emitter<WithdrawState> emit,
  ) async {
    try {
      emit(state.copyWith(status: WithdrawStatus.loading));

      final result = await _withdrawUseCase.call(password: event.password);
      result.fold(
        (errorMessage) => emit(state.copyWith(
          status: WithdrawStatus.error,
          errorMessage: errorMessage,
        )),
        (value) => emit(state.copyWith(
          status: WithdrawStatus.complete,
        )),
      );
    } catch (e) {
      emit(state.copyWith(
        status: WithdrawStatus.error,
        errorMessage: '계정을 삭제하지 못했어요',
      ));
    }
  }
}
