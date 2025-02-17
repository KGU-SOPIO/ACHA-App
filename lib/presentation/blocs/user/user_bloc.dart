import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:acha/domain/usecases/index.dart';
import 'package:acha/domain/repositories/index.dart';
import 'package:acha/presentation/blocs/index.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc({
    required UserRepository userRepository,
  }) : super(const UserState(status: UserStatus.loading)) {
    _fetchUserUseCase = FetchUserUseCase(userRepository: userRepository);

    on<FetchUser>(_onFetchUser);
  }

  late final FetchUserUseCase _fetchUserUseCase;

  /// 학생 정보를 요청합니다.
  Future<void> _onFetchUser(FetchUser event, Emitter<UserState> emit) async {
    try {
      final result = await _fetchUserUseCase.call();
      result.fold(
        (errorMessage) => emit(state.copyWith(
          status: UserStatus.error,
          errorMessage: errorMessage,
        )),
        (value) => emit(state.copyWith(
          status: UserStatus.loaded,
          user: value,
        )),
      );
    } catch (e) {
      emit(state.copyWith(
        status: UserStatus.error,
        errorMessage: '학생 정보를 불러오지 못했어요',
      ));
    }
  }
}
