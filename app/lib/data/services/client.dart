import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:playground/commons/base_url.dart';

class ApiClient {
  final dio = createDio();

  static Dio createDio() {
    var dio = Dio(
      BaseOptions(
        baseUrl: nytBaseUrl,
        queryParameters: {
          'api-key': dotenv.env['NYT_API_KEY'],
        },
        receiveTimeout: Duration(seconds: 15),
        connectTimeout: Duration(seconds: 15),
        sendTimeout: Duration(seconds: 15),
      ),
    );

    dio.interceptors.addAll({
      AppInterceptors(dio),
    });

    return dio;
  }
}

class AppInterceptors extends Interceptor {
  final Dio dio;

  AppInterceptors(this.dio);

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    return handler.next(options);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    return handler.next(err);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    return handler.next(response);
  }
}
