import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:acha/domain/repositories/index.dart';
import 'package:acha/domain/repositories/exceptions/index.dart';
import 'package:acha/presentation/blocs/index.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc({required this.userRepository})
      : super(const UserState(status: UserStatus.loading)) {
    on<FetchUser>(_onFetchUser);
  }

  final UserRepository userRepository;

  /// 학생 정보를 요청합니다.
  Future<void> _onFetchUser(FetchUser event, Emitter<UserState> emit) async {
    try {
      final user = await userRepository.fetchUser();
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
