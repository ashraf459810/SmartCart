class PlaceOrderParms {
  final String name;
  final String link;
  final String quantity;
  final String deliveryTypeId;
  final String counrtyId;
  final String wrapType;
  final String note;

  PlaceOrderParms(this.name, this.link, this.quantity, this.deliveryTypeId,
      this.counrtyId, this.wrapType, this.note);
}
