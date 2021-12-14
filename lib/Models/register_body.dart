// To parse this JSON data, do
//
//     final registerBody = registerBodyFromJson(jsonString);

import 'dart:convert';

RegisterBody registerBodyFromJson(String str) =>
    RegisterBody.fromJson(json.decode(str));

String registerBodyToJson(RegisterBody data) => json.encode(data.toJson());

class RegisterBody {
  RegisterBody({
    this.name,
    this.email,
    this.phone,
    this.password,
    this.address,
    this.birthdate,
    this.gendersId,
    this.citiesId,
  });

  String name;
  String email;
  int phone;
  String password;
  String address;
  String birthdate;
  int gendersId;
  String citiesId;

  factory RegisterBody.fromJson(Map<String, dynamic> json) => RegisterBody(
        name: json["name"],
        email: json["email"],
        phone: json["phone"],
        password: json["password"],
        address: json["address"],
        birthdate: json["birthdate"],
        gendersId: json["genders_id"],
        citiesId: json["cities_id"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "email": email,
        "phone": phone,
        "password": password,
        "address": address,
        "birthdate": birthdate,
        "genders_id": gendersId,
        "cities_id": citiesId,
      };
}
