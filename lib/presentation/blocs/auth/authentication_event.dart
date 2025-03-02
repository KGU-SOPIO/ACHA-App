import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:acha/presentation/blocs/index.dart';

part 'authentication_event.freezed.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.changeState({
    required AuthenticationState state,
  }) = ChangeState;
  const factory AuthenticationEvent.logout() = Logout;
}
