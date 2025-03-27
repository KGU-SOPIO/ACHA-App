import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:acha/data/models/index.dart';
import 'package:acha/domain/usecases/index.dart';
import 'package:acha/domain/repositories/index.dart';
import 'package:acha/presentation/blocs/index.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc({
    required AuthenticationRepository authenticationRepository,
  }) : super(const SignInState(status: SignInStatus.initial)) {
    _signInUseCase = SignInUseCase(
      authenticationRepository: authenticationRepository,
    );
    _fetchUserDataUseCase = FetchUserDataUseCase(
      authenticationRepository: authenticationRepository,
    );
    _signUpUseCase = SignUpUseCase(
      authenticationRepository: authenticationRepository,
    );
    _requestExtractionUseCas = RequestExtractionUseCase(
      authenticationRepository: authenticationRepository,
    );

    on<ChangeSignInStatus>(
      (event, emit) => emit(state.copyWith(
        status: event.status,
        retry: event.retry,
      )),
    );
    on<InputStudentId>(
      (event, emit) => emit(state.copyWith(studentId: event.studentId)),
    );
    on<InputPassword>(
      (event, emit) => emit(state.copyWith(password: event.password)),
    );
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
    SubmitSignIn event,
    Emitter<SignInState> emit,
  ) async {
    try {
      emit(state.copyWith(status: SignInStatus.signInProgress));

      final result = await _signInUseCase.call(
        studentId: state.studentId!,
        password: state.password!,
        retry: state.retry,
      );
      result.fold(
        (errorMessage) => emit(state.copyWith(
          status: SignInStatus.signInFailure,
          errorMessage: errorMessage,
        )),
        (response) => response.when(
          success: (accessToken, refreshToken) => emit(state.copyWith(
            status: SignInStatus.signInSuccess,
          )),
          error: (code) => emit(state.copyWith(
            status: SignInStatus.inFetchUser,
          )),
        ),
      );
    } catch (e) {
      emit(state.copyWith(
        status: SignInStatus.signInFailure,
        errorMessage: '문제가 발생해 로그인에 실패했어요',
      ));
    }
  }

  /// 인증 정보로 학생 정보를 요청합니다.
  Future<void> _onFetchUserData(
    FetchUserData event,
    Emitter<SignInState> emit,
  ) async {
    try {
      emit(state.copyWith(status: SignInStatus.fetchUserProgress));

      final result = await _fetchUserDataUseCase.call(
        studentId: state.studentId!,
        password: state.password!,
      );
      result.fold(
        (errorMessage) => emit(state.copyWith(
          status: SignInStatus.fetchUserFailure,
          errorMessage: errorMessage,
        )),
        (value) => emit(state.copyWith(
          status: SignInStatus.inSignUp,
          user: value,
        )),
      );
    } catch (e) {
      emit(state.copyWith(
        status: SignInStatus.fetchUserFailure,
        errorMessage: '문제가 발생해 학생 정보를 가져오지 못했어요',
      ));
    }
  }

  /// 학생 정보로 회원가입을 요청합니다.
  Future<void> _onSubmitSignUp(
    SubmitSignUp event,
    Emitter<SignInState> emit,
  ) async {
    try {
      emit(state.copyWith(status: SignInStatus.signUpProgress));

      final result = await _signUpUseCase.call(
        studentId: state.studentId!,
        password: state.password!,
        user: state.user!,
      );
      result.fold(
        (errorMessage) => emit(state.copyWith(
          status: SignInStatus.signUpFailure,
          errorMessage: errorMessage,
        )),
        (value) => emit(state.copyWith(status: SignInStatus.inFetchData)),
      );
    } catch (e) {
      emit(state.copyWith(
        status: SignInStatus.signUpFailure,
        errorMessage: '문제가 발생해 회원가입에 실패했어요',
      ));
    }
  }

  /// 데이터 추출을 요청합니다.
  Future<void> _onFetchData(FetchData event, Emitter<SignInState> emit) async {
    try {
      emit(state.copyWith(status: SignInStatus.fetchDataProgress));

      final result = await _requestExtractionUseCas.call();
      result.fold(
        (errorMessage) {
          if (errorMessage == ErrorCode.kutisPasswordError.message) {
            emit(state.copyWith(
              status: SignInStatus.kutisPasswordError,
              errorMessage: 'KUTIS에서 비밀번호를 변경해 주세요',
            ));
          } else {
            emit(state.copyWith(
              status: SignInStatus.fetchDataFailure,
              errorMessage: errorMessage,
            ));
          }
        },
        (value) => emit(state.copyWith(status: SignInStatus.fetchDataSuccess)),
      );
    } catch (e) {
      emit(state.copyWith(
        status: SignInStatus.fetchDataFailure,
        errorMessage: '문제가 발생해 데이터를 불러오지 못했어요',
      ));
    }
  }
}
