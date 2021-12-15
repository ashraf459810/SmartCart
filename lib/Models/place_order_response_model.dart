// To parse this JSON data, do
//
//     final placeOrderResponse = placeOrderResponseFromJson(jsonString);

import 'dart:convert';

PlaceOrderResponse placeOrderResponseFromJson(String str) =>
    PlaceOrderResponse.fromJson(json.decode(str));

String placeOrderResponseToJson(PlaceOrderResponse data) =>
    json.encode(data.toJson());

class PlaceOrderResponse {
  PlaceOrderResponse({
    this.azsvr,
    this.orderItem,
  });

  String azsvr;
  OrderItem orderItem;

  factory PlaceOrderResponse.fromJson(Map<String, dynamic> json) =>
      PlaceOrderResponse(
        azsvr: json["AZSVR"],
        orderItem: OrderItem.fromJson(json["OrderItem"]),
      );

  Map<String, dynamic> toJson() => {
        "AZSVR": azsvr,
        "OrderItem": orderItem.toJson(),
      };
}

class OrderItem {
  OrderItem({
    this.usersId,
    this.membershipsId,
    this.lastUpdateId,
    this.customerName,
    this.customerPhone,
    this.name,
    this.link,
    this.notes,
    this.quantity,
    this.deliveryTypesId,
    this.address,
    this.countriesId,
    this.wrapTypesId,
    this.updatedAt,
    this.createdAt,
    this.id,
  });

  int usersId;
  int membershipsId;
  int lastUpdateId;
  String customerName;
  dynamic customerPhone;
  String name;
  String link;
  dynamic notes;
  String quantity;
  String deliveryTypesId;
  dynamic address;
  String countriesId;
  String wrapTypesId;
  DateTime updatedAt;
  DateTime createdAt;
  int id;

  factory OrderItem.fromJson(Map<String, dynamic> json) => OrderItem(
        usersId: json["users_id"],
        membershipsId: json["memberships_id"],
        lastUpdateId: json["last_update_id"],
        customerName: json["customer_name"],
        customerPhone: json["customer_phone"],
        name: json["name"],
        link: json["link"],
        notes: json["notes"],
        quantity: json["quantity"],
        deliveryTypesId: json["delivery_types_id"],
        address: json["address"],
        countriesId: json["countries_id"],
        wrapTypesId: json["wrap_types_id"],
        updatedAt: DateTime.parse(json["updated_at"]),
        createdAt: DateTime.parse(json["created_at"]),
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "users_id": usersId,
        "memberships_id": membershipsId,
        "last_update_id": lastUpdateId,
        "customer_name": customerName,
        "customer_phone": customerPhone,
        "name": name,
        "link": link,
        "notes": notes,
        "quantity": quantity,
        "delivery_types_id": deliveryTypesId,
        "address": address,
        "countries_id": countriesId,
        "wrap_types_id": wrapTypesId,
        "updated_at": updatedAt.toIso8601String(),
        "created_at": createdAt.toIso8601String(),
        "id": id,
      };
}
