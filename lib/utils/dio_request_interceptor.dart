//

//

import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:get_storage/get_storage.dart';


class DioRequestInterceptor extends Interceptor {
  final storage = GetStorage();

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    try {
      final String? accessToken =
          await storage.read('access_token');
      if (accessToken != null) {
        options.headers.addAll({'Authorization': 'Bearer $accessToken'});
        log('Headers: ${options.headers}');
      }
    } catch (e, s) {
      log(e.toString(), error: e, stackTrace: s);
    }

    return handler.next(options);
  }
}
