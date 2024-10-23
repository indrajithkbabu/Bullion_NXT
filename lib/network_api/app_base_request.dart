import 'dart:developer';


import 'package:bullionnxtnew/flavors/flavor_variables.dart';
import 'package:bullionnxtnew/storage/app_preferences.dart';
import 'package:http/http.dart' as http;

abstract class AppBaseRequest {
  Map<String, String>? headers;

  Future<http.Response?> makeRequest({
    required RequestType requestType,
    required String endpoint,
    dynamic body,
    Map<String, dynamic>? queryParams,
    bool isAuthorizationRequired = true,
  }) async {
    var url = Uri.https(getBaseUrl(), endpoint, queryParams);

    await setRequestHeaders(isAuthorizationRequired: isAuthorizationRequired);

    final http.Response? response;

    log('http/request: ${DateTime.now().toString()}\n$url\n$headers\n$body');

    switch (requestType) {
      case RequestType.get:
        response = await http.get(
          url,
          headers: headers,
        );
        break;
      case RequestType.post:
        response = await http.post(url, headers: headers, body: body);
        break;
      case RequestType.put:
        response = await http.put(url, headers: headers, body: body);
        break;
      case RequestType.patch:
        response = await http.patch(url, headers: headers, body: body);
        break;
      case RequestType.delete:
        response = await http.delete(url, headers: headers, body: body);
        break;
    }

    log('http/response: ${response.statusCode}\n$url\n${response.headers}\n${response.body}');

    return response;
  }

  Future<void> setRequestHeaders(
      {required bool isAuthorizationRequired}) async {
    headers = {};
    String? token;

    if (isAuthorizationRequired) {
      final token = await SecureStorageHelper.shared.getToken();

      if (token == null) {
        // await LogoutUtils.logout();
      }
    }

    headers!['Content-Type'] = 'application/json';
    headers!['Accept'] = 'application/json';
    headers!['Authorization'] = 'Bearer $token';
  }

  String getBaseUrl() {
    final Uri baseUrl =
        Uri.parse(getFlavorVariable(FlavorVariables.baseUrl).toString());
    return baseUrl.host;
  }
}

enum RequestType { get, post, put, patch, delete }
