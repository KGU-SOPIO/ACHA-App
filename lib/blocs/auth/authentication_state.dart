import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_state.freezed.dart';

enum AuthenticationStatus { unknown, authenticated, unauthenticated }

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.unknown() = Unknown;
  const factory AuthenticationState.authenticated() = Authenticated;
  const factory AuthenticationState.unauthenticated() = UnAuthenticated;
}