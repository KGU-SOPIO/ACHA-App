import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:acha/repository/index.dart';
import 'package:acha/blocs/signin/index.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc({required this.authenticationRepository}): super(const SignInState(status: SignInStatus.initial)) {
    on<InputStudentId>((event, emit) => emit(state.copyWith(studentId: event.studentId)));
    on<InputPassword>((event, emit) => emit(state.copyWith(password: event.password)));
    on<SubmitSignIn>(_onSubmitSignIn);
    on<FetchUser>(_onFetchUser);
    on<SubmitSignUp>(_onSubmitSignUp);
  }

  final AuthenticationRepository authenticationRepository;

  /// 인증 정보로 로그인을 요청합니다.
  Future<void> _onSubmitSignIn(SubmitSignIn event, Emitter<SignInState> emit) async {
    try {
      emit(state.copyWith(status: SignInStatus.signInProgress));

      final response = await authenticationRepository.signIn(studentId: state.studentId!, password: state.password!);
      response.when(
        success: (accessToken, refreshToken) => emit(state.copyWith(status: SignInStatus.signInSuccess)),
        fetchUserData: (code) => emit(state.copyWith(status: SignInStatus.inFetchUser))
      );
    } on DioException catch (e) {
      emit(state.copyWith(status: SignInStatus.signInFailure, errorMessage: e.error as String));
    } catch (e) {
      emit(state.copyWith(status: SignInStatus.signInFailure, errorMessage: '문제가 발생해 로그인에 실패했어요'));
    }
  }

  /// 인증 정보로 학생 정보를 요청합니다.
  Future<void> _onFetchUser(FetchUser event, Emitter<SignInState> emit) async {
    try {
      emit(state.copyWith(status: SignInStatus.fetchUserProgress));

      final response = await authenticationRepository.fetchUserData(studentId: state.studentId!, password: state.password!);
      response.when(
        success: (user) => emit(state.copyWith(status: SignInStatus.inSignUp, user: user)),
        error: (code) => emit(state.copyWith(status: SignInStatus.fetchUserFailure, errorMessage: code.message)),
      );
    } on DioException catch (e) {
      emit(state.copyWith(status: SignInStatus.fetchUserFailure, errorMessage: e.error as String));
    } catch (e) {
      emit(state.copyWith(status: SignInStatus.fetchUserFailure, errorMessage: '문제가 발생해 학생 정보를 가져오지 못했어요'));
    }
  }

  /// 학생 정보로 회원가입을 요청합니다.
  Future<void> _onSubmitSignUp(SubmitSignUp event, Emitter<SignInState> emit) async {
    try {
      emit(state.copyWith(status: SignInStatus.signUpProgress));
      await authenticationRepository.signUp(studentId: state.studentId!, password: state.password!, user: state.user!);
      emit(state.copyWith(status: SignInStatus.signUpSuccess));
    } on DioException catch (e) {
      emit(state.copyWith(status: SignInStatus.signUpFailure, errorMessage: e.error as String));
    } catch (e) {
      emit(state.copyWith(status: SignInStatus.signUpFailure, errorMessage: '문제가 발생해 회원가입에 실패했어요'));
    }
  }
}