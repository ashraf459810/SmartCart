part of 'myorders_bloc.dart';

@immutable
abstract class MyordersState {}

class MyordersInitial extends MyordersState {}

class Loading extends MyordersState {}

class Error extends MyordersState {
  final String error;

  Error(this.error);
}

class GetOrderState extends MyordersState {
  final MyOrderModel myOrderModel;

  GetOrderState(this.myOrderModel);
}
