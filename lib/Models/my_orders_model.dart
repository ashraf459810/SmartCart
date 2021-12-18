// To parse this JSON data, do
//
//     final myOrderModel = myOrderModelFromJson(jsonString);

import 'dart:convert';

MyOrderModel myOrderModelFromJson(String str) =>
    MyOrderModel.fromJson(json.decode(str));

String myOrderModelToJson(MyOrderModel data) => json.encode(data.toJson());

class MyOrderModel {
  MyOrderModel({
    this.azsvr,
    this.cancelReasons,
    this.orderItems,
  });

  String azsvr;
  List<CancelReason> cancelReasons;
  List<OrderItem> orderItems;

  factory MyOrderModel.fromJson(Map<String, dynamic> json) => MyOrderModel(
        azsvr: json["AZSVR"],
        cancelReasons: List<CancelReason>.from(
            json["CancelReasons"].map((x) => CancelReason.fromJson(x))),
        orderItems: List<OrderItem>.from(
            json["OrderItems"].map((x) => OrderItem.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "AZSVR": azsvr,
        "CancelReasons":
            List<dynamic>.from(cancelReasons.map((x) => x.toJson())),
        "OrderItems": List<dynamic>.from(orderItems.map((x) => x.toJson())),
      };
}

class CancelReason {
  CancelReason({
    this.id,
    this.reason,
    this.active,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  int id;
  String reason;
  int active;
  dynamic createdAt;
  dynamic updatedAt;
  dynamic deletedAt;

  factory CancelReason.fromJson(Map<String, dynamic> json) => CancelReason(
        id: json["id"],
        reason: json["reason"],
        active: json["active"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        deletedAt: json["deleted_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "reason": reason,
        "active": active,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "deleted_at": deletedAt,
      };
}

class OrderItem {
  OrderItem({
    this.id,
    this.usersId,
    this.promosId,
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
    this.lb,
    this.msOrderId,
    this.boxesId,
    this.shippingDate,
    this.localShippingFees,
    this.tax,
    this.iraqCustoms,
    this.price,
    this.membershipDiscountTypesId,
    this.membershipDiscountPercentage,
    this.membershipDiscountAmount,
    this.promoPercentage,
    this.promoPercentageAmount,
    this.comissionPercentage,
    this.comissionPercentageAmount,
    this.intShipping,
    this.userNotes,
    this.adminNotes,
    this.systemNotes,
    this.statusesId,
    this.refundApplied,
    this.refundReasonsId,
    this.cancelNotes,
    this.cancelReasonsId,
    this.subTotal,
    this.total,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.deliveryType,
    this.lastUpdateUser,
    this.cancelReason,
    this.refundReason,
    this.status,
    this.statusHistory,
    this.country,
    this.wrapType,
    this.invoice,
    this.box,
  });

  int id;
  int usersId;
  dynamic promosId;
  int membershipsId;
  int lastUpdateId;
  String customerName;
  dynamic customerPhone;
  String name;
  String link;
  String notes;
  int quantity;
  int deliveryTypesId;
  dynamic address;
  int countriesId;
  int wrapTypesId;
  int lb;
  dynamic msOrderId;
  dynamic boxesId;
  dynamic shippingDate;
  dynamic localShippingFees;
  dynamic tax;
  dynamic iraqCustoms;
  dynamic price;
  dynamic membershipDiscountTypesId;
  dynamic membershipDiscountPercentage;
  dynamic membershipDiscountAmount;
  dynamic promoPercentage;
  dynamic promoPercentageAmount;
  int comissionPercentage;
  int comissionPercentageAmount;
  int intShipping;
  dynamic userNotes;
  dynamic adminNotes;
  dynamic systemNotes;
  int statusesId;
  int refundApplied;
  dynamic refundReasonsId;
  dynamic cancelNotes;
  dynamic cancelReasonsId;
  int subTotal;
  int total;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic deletedAt;
  Status deliveryType;
  LastUpdateUser lastUpdateUser;
  dynamic cancelReason;
  dynamic refundReason;
  Status status;
  List<dynamic> statusHistory;
  Country country;
  Status wrapType;
  dynamic invoice;
  dynamic box;

  factory OrderItem.fromJson(Map<String, dynamic> json) => OrderItem(
        id: json["id"],
        usersId: json["users_id"],
        promosId: json["promos_id"],
        membershipsId: json["memberships_id"],
        lastUpdateId: json["last_update_id"],
        customerName: json["customer_name"],
        customerPhone: json["customer_phone"],
        name: json["name"],
        link: json["link"],
        notes: json["notes"] == null ? null : json["notes"],
        quantity: json["quantity"],
        deliveryTypesId: json["delivery_types_id"],
        address: json["address"],
        countriesId: json["countries_id"],
        wrapTypesId: json["wrap_types_id"],
        lb: json["lb"],
        msOrderId: json["ms_order_id"],
        boxesId: json["boxes_id"],
        shippingDate: json["shipping_date"],
        localShippingFees: json["local_shipping_fees"],
        tax: json["tax"],
        iraqCustoms: json["iraq_customs"],
        price: json["price"],
        membershipDiscountTypesId: json["membership_discount_types_id"],
        membershipDiscountPercentage: json["membership_discount_percentage"],
        membershipDiscountAmount: json["membership_discount_amount"],
        promoPercentage: json["promo_percentage"],
        promoPercentageAmount: json["promo_percentage_amount"],
        comissionPercentage: json["comission_percentage"],
        comissionPercentageAmount: json["comission_percentage_amount"],
        intShipping: json["int_shipping"],
        userNotes: json["user_notes"],
        adminNotes: json["admin_notes"],
        systemNotes: json["system_notes"],
        statusesId: json["statuses_id"],
        refundApplied: json["refund_applied"],
        refundReasonsId: json["refund_reasons_id"],
        cancelNotes: json["cancel_notes"],
        cancelReasonsId: json["cancel_reasons_id"],
        subTotal: json["sub_total"],
        total: json["total"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        deliveryType: json["delivery_type"] == null
            ? null
            : Status.fromJson(json["delivery_type"]),
        lastUpdateUser: LastUpdateUser.fromJson(json["last_update_user"]),
        cancelReason: json["cancel_reason"],
        refundReason: json["refund_reason"],
        status: Status.fromJson(json["status"]),
        statusHistory: List<dynamic>.from(json["status_history"].map((x) => x)),
        country: Country.fromJson(json["country"]),
        wrapType: json["wrap_type"] == null
            ? null
            : Status.fromJson(json["wrap_type"]),
        invoice: json["invoice"],
        box: json["box"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "users_id": usersId,
        "promos_id": promosId,
        "memberships_id": membershipsId,
        "last_update_id": lastUpdateId,
        "customer_name": customerName,
        "customer_phone": customerPhone,
        "name": name,
        "link": link,
        "notes": notes == null ? null : notes,
        "quantity": quantity,
        "delivery_types_id": deliveryTypesId,
        "address": address,
        "countries_id": countriesId,
        "wrap_types_id": wrapTypesId,
        "lb": lb,
        "ms_order_id": msOrderId,
        "boxes_id": boxesId,
        "shipping_date": shippingDate,
        "local_shipping_fees": localShippingFees,
        "tax": tax,
        "iraq_customs": iraqCustoms,
        "price": price,
        "membership_discount_types_id": membershipDiscountTypesId,
        "membership_discount_percentage": membershipDiscountPercentage,
        "membership_discount_amount": membershipDiscountAmount,
        "promo_percentage": promoPercentage,
        "promo_percentage_amount": promoPercentageAmount,
        "comission_percentage": comissionPercentage,
        "comission_percentage_amount": comissionPercentageAmount,
        "int_shipping": intShipping,
        "user_notes": userNotes,
        "admin_notes": adminNotes,
        "system_notes": systemNotes,
        "statuses_id": statusesId,
        "refund_applied": refundApplied,
        "refund_reasons_id": refundReasonsId,
        "cancel_notes": cancelNotes,
        "cancel_reasons_id": cancelReasonsId,
        "sub_total": subTotal,
        "total": total,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "deleted_at": deletedAt,
        "delivery_type": deliveryType == null ? null : deliveryType.toJson(),
        "last_update_user": lastUpdateUser.toJson(),
        "cancel_reason": cancelReason,
        "refund_reason": refundReason,
        "status": status.toJson(),
        "status_history": List<dynamic>.from(statusHistory.map((x) => x)),
        "country": country.toJson(),
        "wrap_type": wrapType == null ? null : wrapType.toJson(),
        "invoice": invoice,
        "box": box,
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

class Status {
  Status({
    this.id,
    this.name,
    this.createdAt,
    this.updatedAt,
    this.color,
  });

  int id;
  String name;
  dynamic createdAt;
  dynamic updatedAt;
  String color;

  factory Status.fromJson(Map<String, dynamic> json) => Status(
        id: json["id"],
        name: json["name"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        color: json["color"] == null ? null : json["color"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "color": color == null ? null : color,
      };
}

class LastUpdateUser {
  LastUpdateUser({
    this.id,
    this.name,
    this.phone,
    this.email,
    this.emailVerifiedAt,
    this.accountType,
    this.groupsId,
    this.extraPermissions,
    this.active,
    this.hidden,
    this.birthDate,
    this.citiesId,
    this.address,
    this.gendersId,
    this.images,
    this.notes,
    this.social,
    this.facebookField,
    this.facebookField2,
    this.googleField,
    this.googleField2,
    this.appleField,
    this.appleField2,
    this.lastSeen,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  int id;
  String name;
  dynamic phone;
  String email;
  dynamic emailVerifiedAt;
  int accountType;
  int groupsId;
  dynamic extraPermissions;
  int active;
  int hidden;
  dynamic birthDate;
  dynamic citiesId;
  dynamic address;
  dynamic gendersId;
  dynamic images;
  dynamic notes;
  dynamic social;
  dynamic facebookField;
  dynamic facebookField2;
  dynamic googleField;
  dynamic googleField2;
  dynamic appleField;
  dynamic appleField2;
  dynamic lastSeen;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic deletedAt;

  factory LastUpdateUser.fromJson(Map<String, dynamic> json) => LastUpdateUser(
        id: json["id"],
        name: json["name"],
        phone: json["phone"],
        email: json["email"],
        emailVerifiedAt: json["email_verified_at"],
        accountType: json["account_type"],
        groupsId: json["groups_id"],
        extraPermissions: json["extra_permissions"],
        active: json["active"],
        hidden: json["hidden"],
        birthDate: json["birthDate"],
        citiesId: json["cities_id"],
        address: json["address"],
        gendersId: json["genders_id"],
        images: json["images"],
        notes: json["notes"],
        social: json["social"],
        facebookField: json["facebook_field"],
        facebookField2: json["facebook_field_2"],
        googleField: json["google_field"],
        googleField2: json["google_field_2"],
        appleField: json["apple_field"],
        appleField2: json["apple_field_2"],
        lastSeen: json["last_seen"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "phone": phone,
        "email": email,
        "email_verified_at": emailVerifiedAt,
        "account_type": accountType,
        "groups_id": groupsId,
        "extra_permissions": extraPermissions,
        "active": active,
        "hidden": hidden,
        "birthDate": birthDate,
        "cities_id": citiesId,
        "address": address,
        "genders_id": gendersId,
        "images": images,
        "notes": notes,
        "social": social,
        "facebook_field": facebookField,
        "facebook_field_2": facebookField2,
        "google_field": googleField,
        "google_field_2": googleField2,
        "apple_field": appleField,
        "apple_field_2": appleField2,
        "last_seen": lastSeen,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "deleted_at": deletedAt,
      };
}
