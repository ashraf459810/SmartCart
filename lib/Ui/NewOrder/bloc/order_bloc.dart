import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:smartcart/Data/Prefs_Helper/IPrefs_Helper.dart';
import 'package:smartcart/Data/Repository/IRepository.dart';

import 'package:smartcart/Models/counreies_model.dart';
import 'package:smartcart/Models/place_order_parms.dart';
import 'package:smartcart/Models/place_order_response_model.dart';

import '../../../injection.dart';

part 'order_event.dart';
part 'order_state.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {
  OrderBloc() : super(OrderInitial()) {
    var repo = sl<IRepository>();
    IprefsHelper iprefsHelper = IprefsHelper();

    on<OrderEvent>((event, emit) async {
      if (event is PlaceOrderEvent) {
        try {
          String token = await iprefsHelper.getToken();
          emit(Loading());
          final PlaceOrderResponse placeOrderResponse = await repo.postrequest(
              ([response]) => placeOrderResponseFromJson(response),
              "/OrderItems/Store/?api_token=$token&name=${event.parms.name}&link=${event.parms.link}&quantity=${event.parms.quantity}&delivery_types_id=${event.parms.deliveryTypeId}&countries_id=${event.parms.counrtyId}&wrap_types_id=${event.parms.wrapType}&notes=${event.parms.note}");
          emit(PlaceOrderState(placeOrderResponse));
        } catch (e) {
          emit(Error("error"));
        }
      }
      if (event is GetCounriesEvent) {
        try {
          emit(Loading());
          final CountriesModel countriesModel = await repo.getrequest(
              ([response]) => countriesModelFromJson(response),
              "/Miscs/Countries");
          emit(GetCounriesState(countriesModel));
        } catch (e) {
          emit(Error("error"));
        }
      }
    });
  }
}
