// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'signup_cubit.dart';

enum SignupStatus { initial, submitting, success, error }

class SignupState extends Equatable {
  final String email;
  final String password;
  final String? username;
  final SignupStatus status;
  const SignupState({
    required this.email,
    required this.password,
    required this.status,
    this.username = 'Convidado',
  });

  factory SignupState.initial() {
    return const SignupState(
      email: '',
      password: '',
      status: SignupStatus.initial,
    );
  }

  SignupState copyWith({
    String? email,
    String? password,
    String? username,
    SignupStatus? status,
  }) {
    return SignupState(
      email: email ?? this.email,
      password: password ?? this.password,
      username: username ?? this.username,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [email, password, status, username];
}
