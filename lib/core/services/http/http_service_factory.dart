import 'package:persona_feed/app_imports.dart';

class HttpServiceFactory {
  static IHttpService createDioService({
    String? baseUrl,
    Duration? connectTimeout,
    Duration? receiveTimeout,
    Map<String, dynamic>? defaultHeaders,
  }) {
    final dio = Dio(
      BaseOptions(
        baseUrl: baseUrl ?? 'https://randomuser.me/api/',
        connectTimeout: connectTimeout ?? const Duration(seconds: 30),
        receiveTimeout: receiveTimeout ?? const Duration(seconds: 30),
        headers: defaultHeaders,
      ),
    );
    dio.interceptors.add(CurlLoggerDioInterceptor(printOnSuccess: true));
    return DioHttpService(dio);
  }
}
