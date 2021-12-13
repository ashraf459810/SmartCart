part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {}

class UserLoginEvent extends LoginEvent {
  final String userName;
  final String password;

  UserLoginEvent({this.userName, this.password});
}
