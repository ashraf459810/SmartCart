part of 'order_bloc.dart';

@immutable
abstract class OrderEvent {}

class PlaceOrderEvent extends OrderEvent {
  final PlaceOrderParms parms;

  PlaceOrderEvent(this.parms);
}

class GetCounriesEvent extends OrderEvent {}
