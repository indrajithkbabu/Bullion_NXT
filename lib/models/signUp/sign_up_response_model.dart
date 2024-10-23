import 'dart:convert';

class SignUpResponseModel {
    final String? status;
    final String? message;
    final String? token;

    SignUpResponseModel({
        this.status,
        this.message,
        this.token,
    });

    // factory SignUpResponseModel.fromRawJson(String str) => SignUpResponseModel.fromJson(json.decode(str));
  factory SignUpResponseModel.fromRawJson(dynamic json) =>
      SignUpResponseModel.fromJson(json as Map<String, dynamic>);
    String toRawJson() => json.encode(toJson());

    factory SignUpResponseModel.fromJson(Map<String, dynamic> json) => SignUpResponseModel(
        status: json["status"],
        message: json["message"],
        token: json["token"],
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "token": token,
    };
}


