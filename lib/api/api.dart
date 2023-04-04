import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class Api {
  late final dio = Dio(options)..interceptors.addAll([_BasicInterceptor()]);

  final options = BaseOptions(
      baseUrl: 'https://public.test.onlinebank.kz/api/1c-service/',
      connectTimeout: 30000,
      receiveTimeout: 30000);
}

class _BasicInterceptor implements Interceptor {
  final storage = const FlutterSecureStorage();

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    handler.next(err);
  }

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    var value = await storage.read(key: 'token');
    String token =
        'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJtZXJla2VldkBtYWlsLnJ1IiwiZXhwIjoxNjgxNzU0NDAwfQ.DZimYaucukOi-XAhkWsKXE-PwC7lhspP4x-tOnGs9ArDruy_L-K2nX8W_deT_BlyGwjJ-Re-9e0GH5pM_yrzng';
    options.contentType = 'application/json; charset=utf-8';
    options.responseType = ResponseType.json;
    options.headers = {
      "Accept": "application/json",
      "Authorization": "Bearer $token"
    };
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    handler.next(response);
  }
}
