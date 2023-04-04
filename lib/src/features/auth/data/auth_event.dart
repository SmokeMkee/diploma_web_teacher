part of 'auth_bloc.dart';

abstract class AuthEvent {}

class SignInEvent extends AuthEvent {
  SignInEvent({required this.password, required this.email});

  final String email;
  final String password;
}
