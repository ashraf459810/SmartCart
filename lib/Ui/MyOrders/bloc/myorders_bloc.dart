import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:smartcart/Data/Prefs_Helper/IPrefs_Helper.dart';
import 'package:smartcart/Data/Repository/IRepository.dart';
import 'package:smartcart/Models/my_orders_model.dart';

import '../../../injection.dart';

part 'myorders_event.dart';
part 'myorders_state.dart';

class MyordersBloc extends Bloc<MyordersEvent, MyordersState> {
  MyordersBloc() : super(MyordersInitial()) {
    var repo = sl<IRepository>();
    on<MyordersEvent>((event, emit) async {
      if (event is GetOrdersEvent) {
        try {
          emit(Loading());
          IprefsHelper iprefsHelper = IprefsHelper();
          String token = await iprefsHelper.getToken();
          MyOrderModel myOrderModel = await repo.getrequest(
              ([response]) => myOrderModelFromJson(response),
              "/OrderItems?api_token=$token");
          emit(GetOrderState(myOrderModel));
        } catch (e) {
          emit(Error("error"));
        }
      }
    });
  }
}
