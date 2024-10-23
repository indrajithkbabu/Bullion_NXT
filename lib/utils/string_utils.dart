import 'dart:async';
import 'dart:io';

bool isNullOrEmpty(String? str) {
  return str == null || str.isEmpty;
}

String handleError(dynamic error) {
  // Handle different error types here
  if (error is SocketException) {
    return 'Network error, please check your connection.';
  } else if (error is TimeoutException) {
    return 'Request timed out, please try again.';
  } else {
    return error.toString(); // Fallback for unknown error types.
  }
}