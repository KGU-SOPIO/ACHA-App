import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_state.freezed.dart';

enum AuthenticationStatus {
  unknown,
  error,
  expired,
  registered,
  authenticated,
  unauthenticated
}

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.unknown() = Unknown;
  const factory AuthenticationState.error() = Error;
  const factory AuthenticationState.expired() = Expired;
  const factory AuthenticationState.registered() = Registered;
  const factory AuthenticationState.authenticated() = Authenticated;
  const factory AuthenticationState.unauthenticated() = UnAuthenticated;
}
