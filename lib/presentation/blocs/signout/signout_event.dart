import 'package:freezed_annotation/freezed_annotation.dart';

part 'signout_event.freezed.dart';

@freezed
class SignOutEvent with _$SignOutEvent {
  const factory SignOutEvent.submitSignOut({
    required String password,
  }) = SubmitSignOut;
}
