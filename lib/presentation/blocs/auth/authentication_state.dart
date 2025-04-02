import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_state.freezed.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.unknown() = Unknown;
  const factory AuthenticationState.error({
    required String title,
    required String message,
  }) = Error;
  const factory AuthenticationState.authenticated() = Authenticated;
  const factory AuthenticationState.unauthenticated({
    bool? isExpired,
  }) = Unauthenticated;
}
