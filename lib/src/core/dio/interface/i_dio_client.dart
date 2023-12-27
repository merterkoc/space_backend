import 'package:dio/dio.dart';
import 'package:space_backend/src/core/dio/http_handler/default_http_handler.dart';

/// [IDioClient] is used to handle http rest api calls.
abstract class IDioClient {
  IDioClient({
    required String url,
    Duration? connectTimeout,
    Duration? receiveTimeout,
    Interceptor? interceptor,
  }) {
    baseUrl = url;
    _dio
      ..options.baseUrl = url
      ..options.connectTimeout = connectTimeout ?? const Duration(seconds: 10)
      ..options.receiveTimeout = receiveTimeout ?? const Duration(seconds: 10)
      ..options.responseType = ResponseType.json
      ..interceptors.add(interceptor ?? DefaultHttpHeaderInterceptor())
      ..interceptors.add(
        LogInterceptor(
          requestBody: true,
          responseBody: true,
        ),
      );
  }

  late final String baseUrl;

  final Dio _dio = Dio();

  /// http get call
  Future<Response<T>> get<T>(
    String url, {
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final response = await _dio.get<T>(
        url,
        queryParameters: queryParameters,
        options: options,
      );
      if (response.statusCode == 200) {}
      return _handleResponse(response);
    } catch (e) {
      return _handleError(e);
    }
  }

  /// http post call
  Future<Response<T>> post<T>(
    String uri, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    ProgressCallback? onSendProgress,
  }) async {
    try {
      final response = await _dio.post<T>(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        onSendProgress: onSendProgress,
      );
      return _handleResponse(response);
    } catch (e) {
      return _handleError(e);
    }
  }

  /// http put call
  Future<Response<T>> put<T>(
    String uri, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    ProgressCallback? onSendProgress,
  }) async {
    try {
      final response = await _dio.put<T>(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        onSendProgress: onSendProgress,
      );
      return _handleResponse(response);
    } catch (e) {
      return _handleError(e);
    }
  }

  /// http delete call
  Future<Response<T>> delete<T>(
    String uri, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    ProgressCallback? onSendProgress,
  }) async {
    try {
      final response = await _dio.delete<T>(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
      return _handleResponse(response);
    } catch (e) {
      return _handleError(e);
    }
  }

  Future<Response<T>> _handleResponse<T>(
    Response<T> response,
  ) {
    if (response.statusCode == 200 || response.statusCode == 201) {
      return Future.value(
        Response(
          data: response.data as T,
          statusCode: response.statusCode,
          requestOptions: response.requestOptions,
        ),
      );
    } else {
      return Future.value(
        Response(
          data: response.data as T,
          statusCode: response.statusCode,
          requestOptions: response.requestOptions,
        ),
      );
    }
  }

  Future<Response<T>> _handleError<T>(
    dynamic e,
  ) {
    final error = e as DioException;
    if (error.response != null) {
      return Future.value(
        Response(
          data: error.response!.data as T,
          statusCode: error.response!.statusCode,
          requestOptions: error.response!.requestOptions,
        ),
      );
    } else {
      if (error.type == DioExceptionType.connectionTimeout ||
          error.type == DioExceptionType.receiveTimeout) {
        return Future.value(
          Response(
            statusCode: 408,
            requestOptions: error.requestOptions,
          ),
        );
      } else {
        return Future.value(
          Response(
            statusCode: 500,
            requestOptions: error.requestOptions,
          ),
        );
      }
    }
  }
}
