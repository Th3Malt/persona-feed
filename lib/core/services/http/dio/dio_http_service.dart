import 'package:persona_feed/app_imports.dart';

class DioHttpService implements IHttpService {
  final Dio _dio;

  DioHttpService(this._dio);

  @override
  Future<HttpResponse<Map<String, dynamic>>> get(
    String url, {
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await _dio.get(
        url,
        options: Options(headers: headers),
        queryParameters: queryParameters,
      );
      return HttpSuccessResponse<Map<String, dynamic>>(
        statusCode: response.statusCode!,
        data: response.data as Map<String, dynamic>,
      );
    } on DioException catch (e) {
      return HttpErrorResponse<Map<String, dynamic>>(
        statusCode: e.response?.statusCode,
        errorMessage: e.message,
      );
    }
  }
}
