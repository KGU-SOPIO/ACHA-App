import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:acha/blocs/signin/signin_event.dart';
import 'package:acha/blocs/signin/signin_state.dart';

import 'package:acha/repository/authentication.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc({required this.authenticationRepository}): super(const SignInState()) {
    on<SignInStatusChanged>(_onSignInStatusChanged);
    on<SignInStudentIdEntered>((event, emit) => emit(state.copyWith(studentId: event.studentId)));
    on<SignInPasswordEntered>((event, emit) => emit(state.copyWith(password: event.password)));
    on<SignInSubmitted>(_onSignInSubmitted);
    on<SignUpSubmitted>(_onSignUpSubmitted);
    _signInStatusStream = authenticationRepository.createSignInStatusStream();
    _signInStatusSubscription = _signInStatusStream.listen((status) => add(SignInStatusChanged(status)));
  }

  final AuthenticationRepository authenticationRepository;
  late final Stream<SignInStatus> _signInStatusStream;
  late StreamSubscription<SignInStatus> _signInStatusSubscription;

  @override
  Future<void> close() {
    _signInStatusSubscription.cancel();
    return super.close();
  }

  /// 로그인 상태 변경에 따른 동작을 수행합니다.
  Future<void> _onSignInStatusChanged(SignInStatusChanged event, Emitter<SignInState> emit) async {
    switch (event.status) {
      case SignInStatus.inSignUp:
        final user = authenticationRepository.getUserData;
        return emit(state.copyWith(
          name: user.name,
          college: user.college,
          department: user.department,
          major: user.major,
          status: SignInStatus.inSignUp
        ));
      default:
        return emit(state.copyWith(status: event.status));
    }
  }

  /// 인증 정보로 로그인을 요청합니다.
  Future<void> _onSignInSubmitted(SignInSubmitted event, Emitter<SignInState> emit) async {
    try {
      emit(state.copyWith(status: SignInStatus.signInProgress));
      await authenticationRepository.signIn(
        studentId: state.studentId!,
        password: state.password!
      );
    } catch (e) {
      emit(state.copyWith(status: SignInStatus.signInFailure));
    }
  }

  /// 학생 정보로 회원가입을 요청합니다.
  Future<void> _onSignUpSubmitted(SignUpSubmitted event, Emitter<SignInState> emit) async {
    try {
      emit(state.copyWith(status: SignInStatus.signUpProgress));
      await authenticationRepository.signUp(
        studentId: state.studentId!,
        name: state.name!,
        college: state.college!,
        department: state.department!,
        major: state.major!
      );
    } catch (e) {
      emit(state.copyWith(status: SignInStatus.signUpFailure));
    }
  }
}