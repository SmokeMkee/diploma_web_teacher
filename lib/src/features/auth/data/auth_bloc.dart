import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../../../api/api.dart';

part 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({required this.api}) : super(AuthInitial()) {
    on<SignInEvent>(signIn);
  }
  Api api;
  Future<void> signIn(SignInEvent event, Emitter<AuthState> emit) async {

    try {
      final response = await api.dio.get(
          'user-info/get-user-info',
          // data: {
          //   "username" : 'merekee',
          //   "password" : event.password,
          //   "email" : event.email
          // },
          // options: Options(
          //   contentType: Headers.jsonContentType,
          //   responseType: ResponseType.json,
          // ),
          // queryParameters: {
          //   'email': event.email,
          //   'password': event.password
          // },

          );
      print('dsa');
      const storage = FlutterSecureStorage();
      print(response.data);
      // if (response.statusCode == 200) {
      //    await storage.write(key: 'token', value: Welcome.fromJson(response.data).token);
      //   print(response.data);
      //   print('uraaa');
      //   emit(AuthSuccessLogIn());
      // }
    } catch (e) {
      DioError a = e as DioError;

      print(a.response);
     // print(a.response);
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