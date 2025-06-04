class DataException implements Exception {
  final String error;
  DataException({required this.error});
}

class ConnectionException implements Exception {}

class TimeoutException implements Exception {}

class BadResponseException implements Exception {}

class RequestCancelledException implements Exception {}

class BadCertificateException implements Exception {}

class UnknownException implements Exception {}
