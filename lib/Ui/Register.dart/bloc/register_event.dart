part of 'register_bloc.dart';

@immutable
abstract class RegisterEvent {}

class CitiesEvent extends RegisterEvent {}

class UserRegisterEvent extends RegisterEvent {
  final registerBody;

  UserRegisterEvent(this.registerBody);
}
