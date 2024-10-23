import 'package:http/http.dart';

extension ResponseExtension on Response {
  bool isSuccessful() => statusCode >= 200 && statusCode < 300;

  bool isError() => statusCode >= 400;
}
