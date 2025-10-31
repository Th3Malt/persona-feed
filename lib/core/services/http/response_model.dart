sealed class HttpResponse<T> {
  final int? statusCode;
  final T? data;
  final String? errorMessage;

  HttpResponse({this.statusCode, this.data, this.errorMessage});
}

class HttpSuccessResponse<T> extends HttpResponse<T> {
  HttpSuccessResponse({required int statusCode, super.data})
    : super(statusCode: statusCode);
}

class HttpErrorResponse<T> extends HttpResponse<T> {
  HttpErrorResponse({super.statusCode, super.errorMessage});
}
