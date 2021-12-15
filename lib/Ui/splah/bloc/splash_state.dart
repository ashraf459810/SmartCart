part of 'splash_bloc.dart';

@immutable
abstract class SplashState {}

class SplashInitial extends SplashState {}

class GetIsLoginState extends SplashState {
  final bool isLogin;

  GetIsLoginState(this.isLogin);
}

class Loading extends SplashState {}
