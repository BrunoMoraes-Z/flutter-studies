typedef Json = Map<String, dynamic>;

class HttpResult<Json, Exception> {
  HttpResult(this._json, this._exception);

  final Json? _json;
  final Exception? _exception;

  factory HttpResult.success(Json json) => HttpResult(json, null);
  factory HttpResult.error(Exception exception) => HttpResult(null, exception);

  Json get json => _json!;
  bool isOk() => _json != null;
  bool isSuccess() => _json != null;

  Exception get exception => _exception!;
  bool hasError() => _exception != null;
  bool hasException() => _exception != null;
}
