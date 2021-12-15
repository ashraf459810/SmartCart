part of 'order_bloc.dart';

@immutable
abstract class OrderState {}

class OrderInitial extends OrderState {}

class Loading extends OrderState {}

class Error extends OrderState {
  final String error;

  Error(this.error);
}

class PlaceOrderState extends OrderState {
  final PlaceOrderResponse placeOrderResponse;

  PlaceOrderState(this.placeOrderResponse);
}

class GetCounriesState extends OrderState {
  final CountriesModel countriesModel;

  GetCounriesState(this.countriesModel);
}
