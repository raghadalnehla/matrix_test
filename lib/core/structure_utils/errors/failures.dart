abstract class Failure {
  final String? message;

  Failure({this.message});
}

class ServerFailure extends Failure {}

class CacheFailure extends Failure {}

class DataFailure extends Failure {
  DataFailure({required String message}) : super(message: message);
}

class ConnectionFailure extends Failure {}

class TimeoutFailure extends Failure {}

class BadResponseFailure extends Failure {}

class RequestCancelledFailure extends Failure {}

class BadCertificateFailure extends Failure {}

class UnknownFailure extends Failure {}
