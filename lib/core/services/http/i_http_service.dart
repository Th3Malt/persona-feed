import 'package:persona_feed/app_imports.dart';

abstract class IHttpService {
  Future<HttpResponse<Map<String, dynamic>>> get(
    String url, {
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
  });
}
