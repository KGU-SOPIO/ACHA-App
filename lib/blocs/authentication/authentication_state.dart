part of 'authentication_bloc.dart';

class AuthenticationState extends Equatable {
  const AuthenticationState._({
    this.user,
    this.status = AuthenticationStatus.unknown,
  });

  final User? user;
  final AuthenticationStatus status;

  const AuthenticationState.unknown() : this._(user: null, status: AuthenticationStatus.unknown);

  const AuthenticationState.authenticated(User user)
      : this._(user: user, status: AuthenticationStatus.authenticated);

  const AuthenticationState.unauthenticated()
      : this._(user: null, status: AuthenticationStatus.unauthenticated);

  @override
  List<Object?> get props => [user, status];
}