import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:acha/domain/usecases/index.dart';
import 'package:acha/domain/repositories/index.dart';
import 'package:acha/domain/exceptions/index.dart';
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
      final user = await _fetchUserUseCase.call();
      emit(state.copyWith(status: UserStatus.loaded, user: user));
    } on DioException catch (e) {
      emit(state.copyWith(
          status: UserStatus.error, errorMessage: e.error as String));
    } on RepositoryException catch (e) {
      emit(state.copyWith(status: UserStatus.error, errorMessage: e.message));
    } catch (e) {
      emit(state.copyWith(
          status: UserStatus.error, errorMessage: '학생 정보를 불러오지 못했어요'));
    }
  }
}
