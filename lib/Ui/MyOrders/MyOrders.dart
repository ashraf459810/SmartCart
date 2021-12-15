import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartcart/Core/Consts.dart';
import 'package:smartcart/Models/my_orders_model.dart';

import 'package:smartcart/Ui/HomePage/HomePage.dart';
import 'package:smartcart/Ui/MyOrders/bloc/myorders_bloc.dart';
import 'package:smartcart/Ui/NewOrder/NewOrder.dart';
import 'package:smartcart/Ui/PreviousOrderDetails/Previous_order_details.dart';
import 'package:smartcart/Widgets/Container.dart';
import 'package:smartcart/Widgets/CustomListView.dart';
import 'package:smartcart/Widgets/Nav.dart';
import 'package:smartcart/Widgets/Text.dart';
import 'package:toast/toast.dart';

class MyOrders extends StatefulWidget {
  MyOrders({Key key}) : super(key: key);

  @override
  _MyOrdersState createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  MyOrderModel myOrderModel = MyOrderModel();
  ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MyordersBloc()..add(GetOrdersEvent()),
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
        body: ListView(
          children: [
            SizedBox(
              height: h(10),
            ),
            text(text: "My Orders", fontWeight: FontWeight.bold, fontsize: 20),
            SizedBox(
              height: h(10),
            ),
            Container(
              // height: h(550),
              child: BlocConsumer<MyordersBloc, MyordersState>(
                listener: (context, state) {
                  if (state is Error) {
                    Toast.show(state.error, context);
                  }
                },
                builder: (context, state) {
                  if (state is MyordersInitial) {
                    return Center(
                      child: CircularProgressIndicator(
                        color: Colors.orange,
                      ),
                    );
                  }
                  if (state is Loading) {
                    return Center(
                      child: CircularProgressIndicator(
                        color: Colors.orange,
                      ),
                    );
                  }
                  if (state is GetOrderState) {
                    myOrderModel = state.myOrderModel;
                  }

                  return customlistview(
                      controller: scrollController,
                      scrollPhysics:
                          ScrollPhysics(parent: NeverScrollableScrollPhysics()),
                      direction: "vertical",
                      hight: h(300),
                      width: w(300),
                      padding: 10,
                      itemcount: myOrderModel.orderItems.length,
                      function: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: h(20), vertical: w(10)),
                          child: InkWell(
                            onTap: () {
                              nav(
                                  context,
                                  PreviousOrderDetails(
                                      orderItem:
                                          myOrderModel.orderItems[index]));
                            },
                            child: container(
                                hight: h(50),
                                borderRadius: 30,
                                bordercolor: Colors.orange[900],
                                width: w(300),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: h(15),
                                    ),
                                    container(
                                      width: w(240),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          // text(text: "car", fontsize: 18),
                                          text(
                                              text: myOrderModel
                                                  .orderItems[index].name),
                                          container(
                                              width: w(5),
                                              child: text(text: "-")),
                                          text(
                                              text: myOrderModel
                                                      .orderItems[index].price
                                                      .toString() +
                                                  " USD")
                                        ],
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                        );
                      });
                },
              ),
            ),
            // SizedBox(
            //   height: h(10),
            // ),
            InkWell(
              onTap: () {
                nav(context, NewOrder());
              },
              child: Padding(
                padding: EdgeInsets.all(h(8)),
                child: Center(
                  child: container(
                      hight: h(50),
                      borderRadius: 30,
                      color: AppColor.maincolor,
                      child: Center(
                          child: text(
                              text: "New Order",
                              color: Colors.white,
                              fontsize: 22))),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
