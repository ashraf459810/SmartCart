import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:smartcart/Data/Repository/IRepository.dart';
import 'package:smartcart/Models/CitiesModel.dart';

import '../../../injection.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(RegisterInitial()) {
    var repo = sl<IRepository>();
    on<RegisterEvent>((event, emit) async {
      if (event is CitiesEvent) {
        try {
          emit(Loading());
          List<CitiesModel> response = await repo.getrequest(
              ([response]) => citiesModelFromJson(response), "/Miscs/Cities");
          emit(CitiesState(response));
        } catch (e) {
          emit(Error(error: e.toString()));
        }
      }
    });
  }
}
