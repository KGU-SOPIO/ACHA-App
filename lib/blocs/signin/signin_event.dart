import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:acha/blocs/signin/index.dart';

part 'signin_event.freezed.dart';

@freezed
class SignInEvent with _$SignInEvent {
  const factory SignInEvent.changeStatus({required SignInStatus status}) = ChangeStatus;
  const factory SignInEvent.inputStudentId({required String studentId}) = InputStudentId;
  const factory SignInEvent.inputPassword({required String password}) = InputPassword;
  const factory SignInEvent.submitSignIn() = SubmitSignIn;
  const factory SignInEvent.fetchUser() = FetchUser;
  const factory SignInEvent.submitSignUp() = SubmitSignUp;
}