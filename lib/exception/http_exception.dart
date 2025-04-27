class HttpErrorException implements Exception {
  String cause;

  HttpErrorException(this.cause);
}