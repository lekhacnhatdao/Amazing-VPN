import 'dart:convert';

import 'package:http/http.dart';
import 'package:pretty_http_logger/pretty_http_logger.dart';

class _BaseRequest {
  static final HttpWithMiddleware _httpClient = HttpWithMiddleware.build(
    middlewares: [HttpLogger()],
  );

  static final HttpClientWithMiddleware _streamedHttpClient =
      HttpClientWithMiddleware.build(
    middlewares: [
      HttpLogger(),
    ],
  );

  Future<StreamedResponse> send(BaseRequest request) async {
    final response = await _streamedHttpClient.send(request);
    return response;
  }

  Future<Response> patch(
    Uri url, {
    Map<String, String>? headers,
    Object? body,
    Encoding? encoding,
  }) async {
    final response = await _httpClient.patch(url, headers: headers);
    return response;
  }

  Future<Response> get(Uri url, {Map<String, String>? headers}) async {
    final response = await _httpClient.get(url, headers: headers);
    return response;
  }

  Future<Response> put(
    Uri url, {
    Map<String, String>? headers,
    Object? body,
    Encoding? encoding,
  }) async {
    final response = await _httpClient.put(url, headers: headers);
    return response;
  }

  Future<Response> post(
    Uri url, {
    Map<String, String>? headers,
    Object? body,
    Encoding? encoding,
  }) async {
    final response = await _httpClient.post(url, headers: headers, body: body);
    return response;
  }

  Future<Response> delete(
    Uri url, {
    Map<String, String>? headers,
    Object? body,
    Encoding? encoding,
  }) async {
    final response =
        await _httpClient.delete(url, headers: headers, body: body);
    return response;
  }
}

final baseRequest = _BaseRequest();
