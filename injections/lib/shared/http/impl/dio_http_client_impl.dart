import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:injections/shared/http/http_client.dart';
import 'package:injections/shared/http/http_result.dart';

class DioHttpClientImpl implements HttpClient {
  DioHttpClientImpl(this._url);

  final String _url;

  @override
  Future<HttpResult> get(String url, {Json? headers}) async {
    url = _buildUrl(url);
    try {
      var response = await Dio().get(
        url,
        options: headers != null ? Options(headers: headers) : null,
      );

      var json =
          response.data is String ? jsonDecode(response.data) : response.data;
      return HttpResult.success(json);
    } catch (e) {
      return HttpResult.error(e);
    }
  }

  String _buildUrl(String endpoint) {
    if (_url.isEmpty) return endpoint;
    if (_url.endsWith('/') && endpoint.startsWith('/')) {
      return _url + endpoint.replaceFirst('/', '');
    }

    if (!(_url.endsWith('/') && endpoint.startsWith('/'))) {
      return '$_url/$endpoint';
    }

    return _url + endpoint;
  }
}
