import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:acha/domain/usecases/index.dart';
import 'package:acha/domain/repositories/index.dart';
import 'package:acha/domain/exceptions/index.dart';
import 'package:acha/presentation/blocs/index.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc({
    required AuthenticationRepository authenticationRepository,
  }) : super(const SignInState(status: SignInStatus.initial)) {
    _signInUseCase =
        SignInUseCase(authenticationRepository: authenticationRepository);
    _fetchUserDataUseCase = FetchUserDataUseCase(
        authenticationRepository: authenticationRepository);
    _signUpUseCase =
        SignUpUseCase(authenticationRepository: authenticationRepository);
    _requestExtractionUseCas = RequestExtractionUseCase(
        authenticationRepository: authenticationRepository);

    on<InputStudentId>(
        (event, emit) => emit(state.copyWith(studentId: event.studentId)));
    on<InputPassword>(
        (event, emit) => emit(state.copyWith(password: event.password)));
    on<SubmitSignIn>(_onSubmitSignIn);
    on<FetchUserData>(_onFetchUserData);
    on<SubmitSignUp>(_onSubmitSignUp);
    on<FetchData>(_onFetchData);
  }

  late final SignInUseCase _signInUseCase;
  late final FetchUserDataUseCase _fetchUserDataUseCase;
  late final SignUpUseCase _signUpUseCase;
  late final RequestExtractionUseCase _requestExtractionUseCas;

  /// 인증 정보로 로그인을 요청합니다.
  Future<void> _onSubmitSignIn(
      SubmitSignIn event, Emitter<SignInState> emit) async {
    try {
      emit(state.copyWith(status: SignInStatus.signInProgress));

      final response = await _signInUseCase.call(
          studentId: state.studentId!, password: state.password!);
      response.when(
        success: (accessToken, refreshToken) =>
            emit(state.copyWith(status: SignInStatus.signInSuccess)),
        fetchUserData: (code) =>
            emit(state.copyWith(status: SignInStatus.inFetchUser)),
      );
    } on DioException catch (e) {
      emit(state.copyWith(
          status: SignInStatus.signInFailure, errorMessage: e.error as String));
    } on RepositoryException catch (e) {
      emit(state.copyWith(
          status: SignInStatus.signInFailure, errorMessage: e.message));
    } catch (e) {
      emit(state.copyWith(
          status: SignInStatus.signInFailure,
          errorMessage: '문제가 발생해 로그인에 실패했어요'));
    }
  }

  /// 인증 정보로 학생 정보를 요청합니다.
  Future<void> _onFetchUserData(
      FetchUserData event, Emitter<SignInState> emit) async {
    try {
      emit(state.copyWith(status: SignInStatus.fetchUserProgress));

      final response = await _fetchUserDataUseCase.call(
          studentId: state.studentId!, password: state.password!);
      response.when(
        success: (user) =>
            emit(state.copyWith(status: SignInStatus.inSignUp, user: user)),
        error: (code) => emit(state.copyWith(
            status: SignInStatus.fetchUserFailure, errorMessage: code.message)),
      );
    } on DioException catch (e) {
      emit(state.copyWith(
          status: SignInStatus.fetchUserFailure,
          errorMessage: e.error as String));
    } on RepositoryException catch (e) {
      emit(state.copyWith(
          status: SignInStatus.fetchUserFailure, errorMessage: e.message));
    } catch (e) {
      emit(state.copyWith(
          status: SignInStatus.fetchUserFailure,
          errorMessage: '문제가 발생해 학생 정보를 가져오지 못했어요'));
    }
  }

  /// 학생 정보로 회원가입을 요청합니다.
  Future<void> _onSubmitSignUp(
      SubmitSignUp event, Emitter<SignInState> emit) async {
    try {
      emit(state.copyWith(status: SignInStatus.signUpProgress));
      await _signUpUseCase.call(
          studentId: state.studentId!,
          password: state.password!,
          user: state.user!);
      emit(state.copyWith(status: SignInStatus.inFetchData));
    } on DioException catch (e) {
      emit(state.copyWith(
          status: SignInStatus.signUpFailure, errorMessage: e.error as String));
    } on RepositoryException catch (e) {
      emit(state.copyWith(
          status: SignInStatus.signUpFailure, errorMessage: e.message));
    } catch (e) {
      emit(state.copyWith(
          status: SignInStatus.signUpFailure,
          errorMessage: '문제가 발생해 회원가입에 실패했어요'));
    }
  }

  /// 데이터 추출을 요청합니다.
  Future<void> _onFetchData(FetchData event, Emitter<SignInState> emit) async {
    try {
      emit(state.copyWith(status: SignInStatus.fetchDataProgress));
      await _requestExtractionUseCas.call();
      emit(state.copyWith(status: SignInStatus.fetchDataSuccess));
    } on DioException catch (e) {
      emit(state.copyWith(
          status: SignInStatus.fetchDataFailure,
          errorMessage: e.error as String));
    } on RepositoryException catch (e) {
      emit(state.copyWith(
          status: SignInStatus.fetchDataFailure, errorMessage: e.message));
    } catch (e) {
      emit(state.copyWith(
          status: SignInStatus.fetchDataFailure,
          errorMessage: '문제가 발생해 데이터를 불러오지 못했어요'));
    }
  }
}
