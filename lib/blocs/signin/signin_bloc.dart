import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:acha/repository/index.dart';
import 'package:acha/blocs/signin/index.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc({required this.authenticationRepository}): super(const SignInState(status: SignInStatus.initial)) {
    on<StudentIdEntered>((event, emit) => emit(state.copyWith(studentId: event.studentId)));
    on<PasswordEntered>((event, emit) => emit(state.copyWith(password: event.password)));
    on<SignInSubmitted>(_onSignInSubmitted);
    on<SignUpSubmitted>(_onSignUpSubmitted);
  }

  final AuthenticationRepository authenticationRepository;

  /// 인증 정보로 로그인을 요청합니다.
  Future<void> _onSignInSubmitted(SignInSubmitted event, Emitter<SignInState> emit) async {
    try {
      emit(state.copyWith(status: SignInStatus.signInProgress));
      final response = await authenticationRepository.signIn(studentId: state.studentId!, password: state.password!);

      response.maybeWhen(
        success: (accessToken, refreshToken) => emit(state.copyWith(status: SignInStatus.signInSuccess)),
        signup: (name, college, department, major) => emit(state.copyWith(status: SignInStatus.inSignUp, name: name, college: college, department: department, major: major)),
        orElse: () => emit(state.copyWith(status: SignInStatus.signInFailure)),
      );
    } on DioException catch (e) {
      emit(state.copyWith(status: SignInStatus.signInFailure, errorMessage: e.error as String));
    } catch (e) {
      emit(state.copyWith(status: SignInStatus.signInFailure, errorMessage: '문제가 발생해 로그인에 실패했어요'));
    }
  }

  /// 학생 정보로 회원가입을 요청합니다.
  Future<void> _onSignUpSubmitted(SignUpSubmitted event, Emitter<SignInState> emit) async {
    try {
      emit(state.copyWith(status: SignInStatus.signUpProgress));
      final response = await authenticationRepository.signUp(studentId: state.studentId!, name: state.name!, college: state.college!, department: state.department!, major: state.major);

      response.maybeWhen(
        success: (accessToken, refreshToken) => emit(state.copyWith(status: SignInStatus.signUpSuccess)),
        orElse: () => emit(state.copyWith(status: SignInStatus.signUpFailure)),
      );
    } on DioException catch (e) {
      emit(state.copyWith(status: SignInStatus.signUpFailure, errorMessage: e.error as String));
    } catch (e) {
      emit(state.copyWith(status: SignInStatus.signUpFailure, errorMessage: '문제가 발생해 회원가입에 실패했어요'));
    }
  }
}