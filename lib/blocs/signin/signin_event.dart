import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:acha/blocs/signin/index.dart';

part 'signin_event.freezed.dart';

@freezed
class SignInEvent with _$SignInEvent {
  const factory SignInEvent.statusChanged({required SignInStatus status}) = StatusChanged;
  const factory SignInEvent.studentIdEntered({required String studentId}) = StudentIdEntered;
  const factory SignInEvent.passwordEntered({required String password}) = PasswordEntered;
  const factory SignInEvent.signInSubmitted() = SignInSubmitted;
  const factory SignInEvent.signUpSubmitted() = SignUpSubmitted;
}