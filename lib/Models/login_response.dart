// To parse this JSON data, do
//
//     final loginResponse = loginResponseFromJson(jsonString);

import 'dart:convert';

LoginRegisterResponse loginResponseFromJson(String str) =>
    LoginRegisterResponse.fromJson(json.decode(str));

String loginResponseToJson(LoginRegisterResponse data) =>
    json.encode(data.toJson());

class LoginRegisterResponse {
  LoginRegisterResponse({
    this.azsvr,
    this.reason,
    this.apiToken,
  });

  String azsvr;
  String reason;
  String apiToken;

  factory LoginRegisterResponse.fromJson(Map<String, dynamic> json) =>
      LoginRegisterResponse(
        azsvr: json["AZSVR"],
        reason: json["Reason"],
        apiToken: json["api_token"],
      );

  Map<String, dynamic> toJson() => {
        "AZSVR": azsvr,
        "Reason": reason,
        "api_token": apiToken,
      };
}
