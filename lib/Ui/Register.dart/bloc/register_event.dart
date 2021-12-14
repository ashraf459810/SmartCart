part of 'register_bloc.dart';

@immutable
abstract class RegisterEvent {}

class CitiesEvent extends RegisterEvent {}

class UserRegisterEvent extends RegisterEvent {
  final RegisterBody registerBody;

  UserRegisterEvent(this.registerBody);
}
