part of 'auth_bloc.dart';

abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}
class AuthSuccessLogIn extends AuthState {}
class AuthError extends AuthState {}
