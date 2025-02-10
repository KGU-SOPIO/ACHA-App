import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:acha/blocs/auth/index.dart';

part 'authentication_event.freezed.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.changeStatus({required AuthenticationStatus status}) = ChangeStatus;
  const factory AuthenticationEvent.logout() = Logout;
}