import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:smartcart/Data/Prefs_Helper/IPrefs_Helper.dart';

import 'package:smartcart/Data/Repository/IRepository.dart';
import 'package:smartcart/Models/login_response.dart';

import '../../../injection.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    var repo = sl<IRepository>();
    on<LoginEvent>((event, emit) async {
      if (event is UserLoginEvent) {
        try {
          emit(Loading());
          final LoginRegisterResponse result = await repo.getrequest(
              ([response]) => loginResponseFromJson(response),
              "/GetToken/${event.userName}/${event.password}");
          if (result.reason != null) {
            emit(Error(error: result.reason));
          } else {
            IprefsHelper prefsHelper = IprefsHelper();
            prefsHelper.savetoken(result.apiToken);
            emit(UserLoginState(result));
          }
        } catch (e) {
          emit(Error(error: "error"));
        }
      }
    });
  }
}
