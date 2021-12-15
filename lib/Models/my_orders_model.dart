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
  Name customerName;
  dynamic customerPhone;
  String name;
  String link;
  dynamic notes;
  int quantity;
  int deliveryTypesId;
  dynamic address;
  int countriesId;
  int wrapTypesId;
  int lb;
  String msOrderId;
  int boxesId;
  DateTime shippingDate;
  int localShippingFees;
  int tax;
  int iraqCustoms;
  int price;
  dynamic membershipDiscountTypesId;
  dynamic membershipDiscountPercentage;
  int membershipDiscountAmount;
  dynamic promoPercentage;
  dynamic promoPercentageAmount;
  int comissionPercentage;
  double comissionPercentageAmount;
  int intShipping;
  dynamic userNotes;
  dynamic adminNotes;
  dynamic systemNotes;
  int statusesId;
  int refundApplied;
  dynamic refundReasonsId;
  dynamic cancelNotes;
  dynamic cancelReasonsId;
  double subTotal;
  double total;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic deletedAt;
  DeliveryType deliveryType;
  User lastUpdateUser;
  dynamic cancelReason;
  dynamic refundReason;
  DeliveryType status;
  List<StatusHistory> statusHistory;
  Country country;
  DeliveryType wrapType;
  Invoice invoice;
  DeliveryType box;

  factory OrderItem.fromJson(Map<String, dynamic> json) => OrderItem(
        id: json["id"],
        usersId: json["users_id"],
        promosId: json["promos_id"],
        membershipsId: json["memberships_id"],
        lastUpdateId: json["last_update_id"],
        customerName: nameValues.map[json["customer_name"]],
        customerPhone: json["customer_phone"],
        name: json["name"],
        link: json["link"],
        notes: json["notes"],
        quantity: json["quantity"],
        deliveryTypesId: json["delivery_types_id"],
        address: json["address"],
        countriesId: json["countries_id"],
        wrapTypesId: json["wrap_types_id"],
        lb: json["lb"],
        msOrderId: json["ms_order_id"] == null ? null : json["ms_order_id"],
        boxesId: json["boxes_id"] == null ? null : json["boxes_id"],
        shippingDate: json["shipping_date"] == null
            ? null
            : DateTime.parse(json["shipping_date"]),
        localShippingFees: json["local_shipping_fees"] == null
            ? null
            : json["local_shipping_fees"],
        tax: json["tax"] == null ? null : json["tax"],
        iraqCustoms: json["iraq_customs"] == null ? null : json["iraq_customs"],
        price: json["price"] == null ? null : json["price"],
        membershipDiscountTypesId: json["membership_discount_types_id"],
        membershipDiscountPercentage: json["membership_discount_percentage"],
        membershipDiscountAmount: json["membership_discount_amount"] == null
            ? null
            : json["membership_discount_amount"],
        promoPercentage: json["promo_percentage"],
        promoPercentageAmount: json["promo_percentage_amount"],
        comissionPercentage: json["comission_percentage"],
        comissionPercentageAmount:
            json["comission_percentage_amount"].toDouble(),
        intShipping: json["int_shipping"],
        userNotes: json["user_notes"],
        adminNotes: json["admin_notes"],
        systemNotes: json["system_notes"],
        statusesId: json["statuses_id"],
        refundApplied: json["refund_applied"],
        refundReasonsId: json["refund_reasons_id"],
        cancelNotes: json["cancel_notes"],
        cancelReasonsId: json["cancel_reasons_id"],
        subTotal: json["sub_total"].toDouble(),
        total: json["total"].toDouble(),
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        deliveryType: DeliveryType.fromJson(json["delivery_type"]),
        lastUpdateUser: User.fromJson(json["last_update_user"]),
        cancelReason: json["cancel_reason"],
        refundReason: json["refund_reason"],
        status: DeliveryType.fromJson(json["status"]),
        statusHistory: List<StatusHistory>.from(
            json["status_history"].map((x) => StatusHistory.fromJson(x))),
        country: Country.fromJson(json["country"]),
        wrapType: DeliveryType.fromJson(json["wrap_type"]),
        invoice:
            json["invoice"] == null ? null : Invoice.fromJson(json["invoice"]),
        box: json["box"] == null ? null : DeliveryType.fromJson(json["box"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "users_id": usersId,
        "promos_id": promosId,
        "memberships_id": membershipsId,
        "last_update_id": lastUpdateId,
        "customer_name": nameValues.reverse[customerName],
        "customer_phone": customerPhone,
        "name": name,
        "link": link,
        "notes": notes,
        "quantity": quantity,
        "delivery_types_id": deliveryTypesId,
        "address": address,
        "countries_id": countriesId,
        "wrap_types_id": wrapTypesId,
        "lb": lb,
        "ms_order_id": msOrderId == null ? null : msOrderId,
        "boxes_id": boxesId == null ? null : boxesId,
        "shipping_date": shippingDate == null
            ? null
            : "${shippingDate.year.toString().padLeft(4, '0')}-${shippingDate.month.toString().padLeft(2, '0')}-${shippingDate.day.toString().padLeft(2, '0')}",
        "local_shipping_fees":
            localShippingFees == null ? null : localShippingFees,
        "tax": tax == null ? null : tax,
        "iraq_customs": iraqCustoms == null ? null : iraqCustoms,
        "price": price == null ? null : price,
        "membership_discount_types_id": membershipDiscountTypesId,
        "membership_discount_percentage": membershipDiscountPercentage,
        "membership_discount_amount":
            membershipDiscountAmount == null ? null : membershipDiscountAmount,
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
        "delivery_type": deliveryType.toJson(),
        "last_update_user": lastUpdateUser.toJson(),
        "cancel_reason": cancelReason,
        "refund_reason": refundReason,
        "status": status.toJson(),
        "status_history":
            List<dynamic>.from(statusHistory.map((x) => x.toJson())),
        "country": country.toJson(),
        "wrap_type": wrapType.toJson(),
        "invoice": invoice == null ? null : invoice.toJson(),
        "box": box == null ? null : box.toJson(),
      };
}

class DeliveryType {
  DeliveryType({
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

  factory DeliveryType.fromJson(Map<String, dynamic> json) => DeliveryType(
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

enum Name { BARZAN, ADMIN }

final nameValues = EnumValues({"Admin": Name.ADMIN, "barzan": Name.BARZAN});

class Invoice {
  Invoice({
    this.id,
    this.orderItemsId,
    this.isPaid,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  int id;
  int orderItemsId;
  int isPaid;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic deletedAt;

  factory Invoice.fromJson(Map<String, dynamic> json) => Invoice(
        id: json["id"],
        orderItemsId: json["order_items_id"],
        isPaid: json["isPaid"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "order_items_id": orderItemsId,
        "isPaid": isPaid,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "deleted_at": deletedAt,
      };
}

class User {
  User({
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
  Name name;
  String phone;
  Email email;
  dynamic emailVerifiedAt;
  int accountType;
  int groupsId;
  String extraPermissions;
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

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        name: nameValues.map[json["name"]],
        phone: json["phone"] == null ? null : json["phone"],
        email: emailValues.map[json["email"]],
        emailVerifiedAt: json["email_verified_at"],
        accountType: json["account_type"],
        groupsId: json["groups_id"],
        extraPermissions: json["extra_permissions"] == null
            ? null
            : json["extra_permissions"],
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
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": nameValues.reverse[name],
        "phone": phone == null ? null : phone,
        "email": emailValues.reverse[email],
        "email_verified_at": emailVerifiedAt,
        "account_type": accountType,
        "groups_id": groupsId,
        "extra_permissions": extraPermissions == null ? null : extraPermissions,
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
        "created_at": createdAt == null ? null : createdAt.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt.toIso8601String(),
        "deleted_at": deletedAt,
      };
}

enum Email { BARZAN_KERNEL_KRD, INFO_SMARTCARTIQ_COM }

final emailValues = EnumValues({
  "barzan@kernel.krd": Email.BARZAN_KERNEL_KRD,
  "info@smartcartiq.com": Email.INFO_SMARTCARTIQ_COM
});

class StatusHistory {
  StatusHistory({
    this.id,
    this.orderItemsId,
    this.name,
    this.usersId,
    this.accountType,
    this.seen,
    this.createdAt,
    this.updatedAt,
    this.user,
  });

  int id;
  int orderItemsId;
  String name;
  String usersId;
  String accountType;
  int seen;
  DateTime createdAt;
  DateTime updatedAt;
  User user;

  factory StatusHistory.fromJson(Map<String, dynamic> json) => StatusHistory(
        id: json["id"],
        orderItemsId: json["order_items_id"],
        name: json["name"],
        usersId: json["users_id"],
        accountType: json["account_type"],
        seen: json["seen"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        user: User.fromJson(json["user"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "order_items_id": orderItemsId,
        "name": name,
        "users_id": usersId,
        "account_type": accountType,
        "seen": seen,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "user": user.toJson(),
      };
}

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
