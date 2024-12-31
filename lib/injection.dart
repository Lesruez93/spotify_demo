import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:spotify_demo/utils/cache.dart';

class DioRequestInterceptor extends Interceptor {
  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    try {
      var $secureStorage;
      final String accessToken = 'BQA3CcrblFbZBxkxNm7G5fQ7Qrh-hcZIs3wARulmi2lL3YbMDThnRYGtYh_i3w0quNXS2cN0CT6L9COLy3fLW1S66RTDn0xoHv6zXfTWjlSwfanRQD7dGMnyyyYZcY2w5kyfQkox8shPxVvd748eyvZKqCvpzkOj6aW4Zva2DS7s2r4BomlkDzoOIHWGa3fpw5vWI3w63X4dvuXlg7VveuuSctXGZGBmNxLWHg8eyGGKTv3jfkvc_u1qcvKCSxdzDOYbM6aYBWSmWUSm5q1y5MyOC9MkyZxwC-hNyHIpnqsSLp9pE2j_IrClN5pMgpXxlj3O6-23Q2OYl-m35eEFwBTBYe-AWpU';
      options.headers.addAll({'Authorization': 'Bearer $accessToken'});
        } catch (e) {}

    return handler.next(options);
  }
}

class ApiService extends GetxService {
  late Dio dio;

  @override
  void onInit() {
    dio = Dio()
      ..options.baseUrl = 'https://api.spotify.com/v1/'
      ..options.headers['Content-Type'] = 'application/json'
      ..options.headers['Accept'] = 'application/json'
      ..interceptors.add(DioRequestInterceptor())
      ..interceptors.add(DioCacheInterceptor(options: $cacheOptions))
      ..interceptors.add(
        PrettyDioLogger(
          requestHeader: false,
          requestBody: true,
          //responseBody: true,
        ),
      )
      ..options.connectTimeout = const Duration(milliseconds: 60000);

    super.onInit();
  }

  Dio getInstance() => dio;
}
