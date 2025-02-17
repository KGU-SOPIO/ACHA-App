import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:acha/presentation/blocs/index.dart';

part 'signin_event.freezed.dart';

@freezed
class SignInEvent with _$SignInEvent {
  const factory SignInEvent.changeSignInStatus({required SignInStatus status}) =
      ChangeSignInStatus;
  const factory SignInEvent.inputStudentId({required String studentId}) =
      InputStudentId;
  const factory SignInEvent.inputPassword({required String password}) =
      InputPassword;
  const factory SignInEvent.submitSignIn() = SubmitSignIn;
  const factory SignInEvent.fetchUserData() = FetchUserData;
  const factory SignInEvent.submitSignUp() = SubmitSignUp;
  const factory SignInEvent.fetchData() = FetchData;
}
