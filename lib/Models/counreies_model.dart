// To parse this JSON data, do
//
//     final countriesModel = countriesModelFromJson(jsonString);

import 'dart:convert';

CountriesModel countriesModelFromJson(String str) =>
    CountriesModel.fromJson(json.decode(str));

String countriesModelToJson(CountriesModel data) => json.encode(data.toJson());

class CountriesModel {
  CountriesModel({
    this.azsvr,
    this.data,
  });

  String azsvr;
  List<Country> data;

  factory CountriesModel.fromJson(Map<String, dynamic> json) => CountriesModel(
        azsvr: json["AZSVR"],
        data: List<Country>.from(json["Data"].map((x) => Country.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "AZSVR": azsvr,
        "Data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Country {
  Country({
    this.id,
    this.code,
    this.name,
    this.comission,
    this.shipping,
    this.orderNotes,
    this.createdAt,
    this.updatedAt,
  });

  int id;
  String code;
  String name;
  int comission;
  int shipping;
  dynamic orderNotes;
  dynamic createdAt;
  dynamic updatedAt;

  factory Country.fromJson(Map<String, dynamic> json) => Country(
        id: json["id"],
        code: json["code"],
        name: json["name"],
        comission: json["comission"],
        shipping: json["shipping"],
        orderNotes: json["order_notes"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "code": code,
        "name": name,
        "comission": comission,
        "shipping": shipping,
        "order_notes": orderNotes,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}
