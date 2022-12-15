// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'auth_bloc.dart';

enum AuthStatus {
  authenticated,
  unauthenticated,
}

class AuthState extends Equatable {
  const AuthState._({
    required this.status,
    this.user = User.epmty,
    this.favoritSports,
  });

  const AuthState.authenticated(User user)
      : this._(status: AuthStatus.authenticated, user: user);

  const AuthState.unauthenticated()
      : this._(status: AuthStatus.unauthenticated);

  const AuthState.updateUsername(String nome)
      : this._(status: AuthStatus.unauthenticated,);

  final AuthStatus status;
  final User user;
  final List<Sports>? favoritSports;

  @override
  List<Object?> get props => [status, user, favoritSports];
}
