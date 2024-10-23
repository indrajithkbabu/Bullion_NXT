import 'dart:convert';

import 'package:bullionnxtnew/models/login/login_response_model.dart';
import 'package:bullionnxtnew/models/signUp/sign_up_response_model.dart';
import 'package:bullionnxtnew/network_api/app_base_request.dart';
import 'package:bullionnxtnew/network_api/endpoints.dart';
import 'package:bullionnxtnew/network_api/response_extension.dart';

class AuthRequest extends AppBaseRequest {
  Future<SignUpResponseModel> signUpUser(
      {required String storeName,
      required String phone,
      required String password,
      required String city}) async {
    var reqBody = {
      "storeName": storeName,
      "password": password,
      "city": city,
      "phoneNumber": phone
    };
    final response = await makeRequest(
      requestType: RequestType.post,
      endpoint: Endpoints.signUp,
      isAuthorizationRequired: false,
      body: jsonEncode(reqBody),
    );

    if (response!.isSuccessful()) {
      return SignUpResponseModel.fromJson(jsonDecode(response.body));
    } else {
      var message = jsonDecode(response.body)['message'];
      return SignUpResponseModel(message: message);
    }
  }

  Future<LoginResponseModel> loginUser({
    required String phone,
    required String password,
  }) async {
    var reqBody = {"password": password, "phoneNumber": phone};
    final response = await makeRequest(
      requestType: RequestType.post,
      endpoint: Endpoints.login,
      isAuthorizationRequired: false,
      body: jsonEncode(reqBody),
    );

    if (response!.isSuccessful()) {
      return LoginResponseModel.fromJson(jsonDecode(response.body));
    } else {
      var message = jsonDecode(response.body)['message'];
      return LoginResponseModel(message: message);
    }
  }
}
