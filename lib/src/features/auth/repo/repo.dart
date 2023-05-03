import 'dart:convert';

import 'package:dio/dio.dart';

import '../../../../../../api/api.dart';
import '../model/auth.dart';

class RepoAuth {
  RepoAuth({required this.api});

  final Api api;

  Future<Auth> sign(String email, String password) async {
    final result = await Dio().post(
      'https://public.test.onlinebank.kz/api/1c-service/auth/signin',
      data: {
        "username" : email,
        "password" : password,
      }
    );
    return Auth.fromJson(result.data);;
  }
}
