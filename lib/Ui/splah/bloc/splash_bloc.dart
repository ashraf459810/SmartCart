import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:smartcart/Data/Repository/IRepository.dart';

import '../../../injection.dart';

part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(SplashInitial()) {
    var repo = sl<IRepository>();
    on<SplashEvent>((event, emit) async {
      if (event is GetIfLoginEvent) {
        emit(Loading());
        log("here from blloc");
        String result = await repo.iprefsHelper.getToken();
        if (result != null) {
          emit(GetIsLoginState(true));
        } else {
          emit(GetIsLoginState(false));
        }
      }
    });
  }
}
