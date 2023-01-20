import 'package:injections/shared/http/http_result.dart';

abstract class HttpClient {
  Future<HttpResult> get(String url, {Json? headers});
  //Future<HttpResult> post(String url, {Json? headers, Json? body});
}
