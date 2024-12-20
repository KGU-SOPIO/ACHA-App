import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:acha/repository/authentication.dart';

part 'signin_event.dart';
part 'signin_state.dart';
part 'signin_state.freezed.dart';
part 'signin_state.g.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc({
    required AuthenticationRepository authenticationRepository
  }) : _authenticationRepository = authenticationRepository,
  super(const SignInState()) {
    on<_SignInStatusChanged>(_onSignInStatusChanged);
    on<SignInStudentIdEntered>((event, emit) => emit(state.copyWith(studentId: event.studentId)));
    on<SignInPasswordEntered>((event, emit) => emit(state.copyWith(password: event.password)));
    on<SignInSubmitted>(_onSignInSubmitted);
    on<SignUpSubmitted>(_onSignUpSubmitted);
    _signInStatusStream = _authenticationRepository.createSignInStatusStream();
    _signInStatusSubscription = _signInStatusStream.listen((status) => add(_SignInStatusChanged(status)));
  }

  final AuthenticationRepository _authenticationRepository;
  late final Stream<SignInStatus> _signInStatusStream;
  late StreamSubscription<SignInStatus> _signInStatusSubscription;

  @override
  Future<void> close() {
    _signInStatusSubscription.cancel();
    return super.close();
  }

  Future<void> _onSignInStatusChanged(_SignInStatusChanged event, Emitter<SignInState> emit) async {
    switch (event.status) {
      case SignInStatus.inSignUp:
        final user = _authenticationRepository.getUserData;
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

  Future<void> _onSignInSubmitted(SignInSubmitted event, Emitter<SignInState> emit) async {
    try {
      emit(state.copyWith(status: SignInStatus.signInProgress));
      await _authenticationRepository.signIn(
        studentId: state.studentId!,
        password: state.password!
      );
    } catch (e) {
      emit(state.copyWith(status: SignInStatus.signInFailure));
    }
  }

  Future<void> _onSignUpSubmitted(SignUpSubmitted event, Emitter<SignInState> emit) async {
    try {
      emit(state.copyWith(status: SignInStatus.signUpProgress));
      await _authenticationRepository.signUp(
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