import 'package:flutter/material.dart';
import 'package:smartcart/Core/Consts.dart';

import 'package:smartcart/Ui/HomePage/HomePage.dart';
import 'package:smartcart/Widgets/Container.dart';
import 'package:smartcart/Widgets/CustomListView.dart';
import 'package:smartcart/Widgets/Text.dart';

class MyOrders extends StatefulWidget {
  MyOrders({Key key}) : super(key: key);

  @override
  _MyOrdersState createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(h(50)),
          child: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              leading: Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 20),
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.orange,
                  )))),
      body: Container(
        height: size.height - h(50),
        child: Column(
          children: [
            SizedBox(
              height: h(10),
            ),
            text(text: "My Orders", fontWeight: FontWeight.bold, fontsize: 20),
            SizedBox(
              height: h(10),
            ),
            Container(
              height: h(550),
              child: customlistview(
                  controller: scrollController,
                  direction: "vertical",
                  hight: h(300),
                  width: w(300),
                  padding: 10,
                  itemcount: 10,
                  function: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: container(
                          hight: h(80),
                          borderRadius: 30,
                          bordercolor: Colors.orange[900],
                          width: w(333),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  text(
                                      text: "Order_ID : 12123",
                                      color: Colors.grey,
                                      fontsize: 12),
                                  text(
                                      text: "Status : Pending",
                                      color: Colors.grey,
                                      fontsize: 12),
                                  text(
                                      text: "Date : 12/12/2121",
                                      color: Colors.grey,
                                      fontsize: 12)
                                ],
                              ),
                              SizedBox(
                                height: h(15),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // text(text: "car", fontsize: 18),
                                  text(text: "Laptop Asus 210 _"),
                                  SizedBox(
                                    width: w(5),
                                  ),
                                  text(text: "price : 700k ID")
                                ],
                              ),
                            ],
                          )),
                    );
                  }),
            ),
            SizedBox(
              height: h(10),
            ),
            container(
                hight: h(60),
                width: w(300),
                borderRadius: 30,
                color: AppColor.maincolor,
                child: Center(
                    child: text(
                        text: "New Order", color: Colors.white, fontsize: 22))),
          ],
        ),
      ),
    );
  }
}
