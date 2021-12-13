// To parse this JSON data, do
//
//     final citiesModel = citiesModelFromJson(jsonString);

import 'dart:convert';

CitiesModel citiesModelFromJson(String str) =>
    CitiesModel.fromJson(json.decode(str));

String citiesModelToJson(CitiesModel data) => json.encode(data.toJson());

class CitiesModel {
  CitiesModel({
    this.azsvr,
    this.data,
  });

  String azsvr;
  List<Datum> data;

  factory CitiesModel.fromJson(Map<String, dynamic> json) => CitiesModel(
        azsvr: json["AZSVR"],
        data: List<Datum>.from(json["Data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "AZSVR": azsvr,
        "Data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  Datum({
    this.id,
    this.title,
    this.countryIsoCode,
    this.parentId,
    this.internalDeliveryPrice,
    this.internalDeliveryDays,
    this.externalDeliveryPrice,
    this.externalDeliveryDays,
  });

  int id;
  String title;
  String countryIsoCode;
  dynamic parentId;
  int internalDeliveryPrice;
  String internalDeliveryDays;
  int externalDeliveryPrice;
  String externalDeliveryDays;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        title: json["title"],
        countryIsoCode: json["country_iso_code"],
        parentId: json["parent_id"],
        internalDeliveryPrice: json["internal_delivery_price"],
        internalDeliveryDays: json["internal_delivery_days"],
        externalDeliveryPrice: json["external_delivery_price"],
        externalDeliveryDays: json["external_delivery_days"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "country_iso_code": countryIsoCode,
        "parent_id": parentId,
        "internal_delivery_price": internalDeliveryPrice,
        "internal_delivery_days": internalDeliveryDays,
        "external_delivery_price": externalDeliveryPrice,
        "external_delivery_days": externalDeliveryDays,
      };
}
