import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:smartcart/Data/Repository/IRepository.dart';
import 'package:smartcart/Models/CitiesModel.dart';
import 'package:smartcart/Models/login_response.dart';

import '../../../injection.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(RegisterInitial()) {
    var repo = sl<IRepository>();
    on<RegisterEvent>((event, emit) async {
      if (event is CitiesEvent) {
        // try {
        emit(Loading());
        CitiesModel response = await repo.getrequest(
            ([response]) => citiesModelFromJson(response), "/Miscs/Cities");
        emit(CitiesState(response.data));
        // } catch (e) {
        //   emit(Error(error: "error"));
        // }
      }
      if (event is UserRegisterEvent) {
        try {
          emit(Loading());
          LoginRegisterResponse response = await repo.postrequest(
              ([response]) => loginResponseFromJson(response),
              "/Register",
              event.registerBody);
          if (response.reason == null) {
            await repo.iprefsHelper.savetoken(response.apiToken);
            emit(UserRegisterState(response));
          } else {
            emit(Error(error: response.reason));
          }
        } catch (e) {
          emit(Error(error: "error"));
        }
      }
    });
  }
}
