import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartcart/Core/Consts.dart';
import 'package:smartcart/Models/counreies_model.dart';

import 'package:smartcart/Models/place_order_parms.dart';
import 'package:smartcart/Ui/ButtomNavBar/NavigationBar.dart';

import 'package:smartcart/Ui/Editprofile/EditProfile.dart';
import 'package:smartcart/Ui/HomePage/HomePage.dart';
import 'package:smartcart/Widgets/Container.dart';
import 'package:smartcart/Widgets/DropDownCountries.dart';
import 'package:smartcart/Widgets/Dropdown.dart';
import 'package:smartcart/Widgets/Nav.dart';

import 'package:smartcart/Widgets/Text.dart';
import 'package:toast/toast.dart';

import 'bloc/order_bloc.dart';

class NewOrder extends StatefulWidget {
  NewOrder({Key key}) : super(key: key);

  @override
  _NewOrderState createState() => _NewOrderState();
}

class _NewOrderState extends State<NewOrder> {
  List<Country> countries = [];
  String wrappingId;
  String locationId;
  String wrapping;
  String chosenlocation;
  String note;
  TextEditingController notec = TextEditingController();
  String title;
  String country;
  String countryId;
  String weburl;
  TextEditingController weburlc = TextEditingController();
  TextEditingController titlec = TextEditingController();
  String quantity;
  TextEditingController quantityc = TextEditingController();
  List<String> deliveryoptions = ["Home", "Office"];
  List<String> wrappingway = ["Normal", "Gift"];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OrderBloc()..add(GetCounriesEvent()),
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(h(50)),
            child: AppBar(
                elevation: 0,
                backgroundColor: Colors.white,
                leading: Padding(
                    padding: const EdgeInsets.only(top: 10.0, left: 20),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.orange,
                        ),
                      ),
                    )))),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: h(10),
                ),
                text(
                    text: "New Order",
                    color: Colors.black,
                    fontsize: 20,
                    fontWeight: FontWeight.bold),
                SizedBox(
                  height: h(20),
                ),
                registertap("Web Link", "paste url", "name", (val) {
                  weburl = val;
                }, 80, weburlc),
                SizedBox(
                  height: h(20),
                ),
                registertap("Order Title", "enter title", "name", (val) {
                  title = val;
                }, 80, titlec),
                SizedBox(
                  height: h(20),
                ),
                registertap("Quantity", "enter count", "number", (val) {
                  quantity = val;
                }, 70, quantityc),
                SizedBox(
                  height: h(20),
                ),
                registertap("Note", "enter note", "name", (val) {
                  note = val;
                }, 50, notec),
                SizedBox(
                  height: h(30),
                ),
                container(
                    hight: h(44),
                    width: w(330),
                    borderRadius: 30,
                    bordercolor: Colors.orange[900],
                    child: DropDown(
                      list: deliveryoptions,
                      hint: "select location",
                      onchanged: (value) {
                        chosenlocation = value;
                      },
                      getindex: (val) {
                        locationId = val.toString();
                      },
                    )),
                SizedBox(
                  height: h(30),
                ),
                container(
                    hight: h(44),
                    width: w(330),
                    borderRadius: 30,
                    bordercolor: Colors.orange[900],
                    child: DropDown(
                      list: wrappingway,
                      hint: "select wrap",
                      onchanged: (value) {
                        wrapping = value;
                      },
                      getindex: (val) {
                        wrappingId = val.toString();
                      },
                    )),
                SizedBox(
                  height: h(35),
                ),
                BlocBuilder<OrderBloc, OrderState>(
                  builder: (context, state) {
                    if (state is LoadingCountries) {
                      return Center(
                          child:
                              CircularProgressIndicator(color: Colors.orange));
                    }
                    if (state is GetCounriesState) {
                      countries = state.countriesModel.data;
                    }

                    return container(
                        hight: h(44),
                        width: w(330),
                        borderRadius: 30,
                        bordercolor: Colors.orange[900],
                        child: DropDownCountries(
                          chosenvalue: country,
                          list: countries,
                          hint: "select Country",
                          onchanged: (value) {
                            country = value.name;
                            countryId = value.id.toString();
                          },
                          getindex: (val) {},
                        ));
                  },
                ),
                SizedBox(
                  height: h(25),
                ),
                Builder(builder: (context) {
                  return GestureDetector(
                    onTap: () {
                      if (title != null &&
                          quantity != null &&
                          chosenlocation != null &&
                          wrapping != null &&
                          countryId != null) {
                        PlaceOrderParms placeOrderParms = PlaceOrderParms(
                            title,
                            weburl,
                            quantity,
                            locationId,
                            countryId,
                            wrappingId,
                            note);
                        context
                            .read<OrderBloc>()
                            .add(PlaceOrderEvent(placeOrderParms));
                      } else {
                        Toast.show("please complet your information", context);
                      }
                    },
                    child: BlocConsumer<OrderBloc, OrderState>(
                      listener: (context, state) {
                        if (state is PlaceOrderState) {
                          Toast.show("Order Placed Successfully", context);
                          nav(context, NavigationBar());
                        }
                      },
                      builder: (context, state) {
                        if (state is Loading) {
                          return Center(
                            child: CircularProgressIndicator(
                              color: Colors.orange,
                            ),
                          );
                        }

                        return container(
                            hight: h(60),
                            width: w(300),
                            borderRadius: 30,
                            color: AppColor.maincolor,
                            child: Center(
                                child: text(
                                    text: "Add Order",
                                    color: Colors.white,
                                    fontsize: 22)));
                      },
                    ),
                  );
                }),
                // SizedBox(
                //   height: h(20),
                // ),
                // InkWell(
                //     onTap: () {
                //       nav(context, DeliverToAnotherLocation());
                //     },
                //     child: text(text: "Deliver to another location?"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
