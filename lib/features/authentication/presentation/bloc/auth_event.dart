// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'auth_bloc.dart';

abstract class AuthEvent {
  const AuthEvent();
}

class AuthLogoutRequested extends AuthEvent {
  const AuthLogoutRequested();
}

class _AuthUserChanged extends AuthEvent {
  const _AuthUserChanged(this.user);

  final User user;
}
