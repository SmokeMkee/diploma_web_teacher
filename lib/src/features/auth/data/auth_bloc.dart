import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dio/dio.dart';
import 'package:diploma_web_teacher/src/features/auth/repo/repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../../../api/api.dart';

part 'auth_event.dart';

part 'auth_state.dart';


class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({required this.repo}) : super(AuthInitial()) {
    on<SignInEvent>(signIn , transformer:  droppable());
    on<LogOutEvent>(logOut,transformer: droppable());
  }

  RepoAuth repo;
  var storage = const FlutterSecureStorage();

  Future<void> logOut(LogOutEvent event, Emitter<AuthState> emit) async {
    try {
      storage.delete(key: 'token');
    } catch (e) {}
  }

  Future<void> signIn(SignInEvent event, Emitter<AuthState> emit) async {
    try {
      final response = await repo.sign(event.email, event.password);
      print(response.token);
      if(response.userType == 'student'){
        emit(AuthError(message: 'неверный пароль или email'));
      }else{
        storage.write(key: 'token', value: response.token);
        emit(AuthSuccessLogIn());
      }
    } catch (e) {
      emit(AuthError(message: 'неверный пароль или email'));
    }
  }
}

class Welcome {
  Welcome({
    required this.token,
  });

  String token;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "token": token,
      };
}
