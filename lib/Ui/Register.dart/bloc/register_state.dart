part of 'register_bloc.dart';

@immutable
abstract class RegisterState {}

class RegisterInitial extends RegisterState {}

class Loading extends RegisterState {}

class LoadingRegister extends RegisterState {}

class Error extends RegisterState {
  final String error;

  Error({this.error});
}

class CitiesState extends RegisterState {
  final List<Datum> cities;

  CitiesState(this.cities);
}

class UserRegisterState extends RegisterState {
  final LoginRegisterResponse loginRegisterResponse;

  UserRegisterState(this.loginRegisterResponse);
}
