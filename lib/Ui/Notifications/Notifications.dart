import 'package:flutter/material.dart';
import 'package:smartcart/Ui/HomePage/HomePage.dart';
import 'package:smartcart/Widgets/Container.dart';
import 'package:smartcart/Widgets/CustomListView.dart';
import 'package:smartcart/Widgets/Text.dart';

class Notifications extends StatefulWidget {
  Notifications({Key key}) : super(key: key);

  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController();
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(h(60)),
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
          child: Center(
            child: Column(
              children: [
                text(
                    text: "Notifications",
                    fontsize: 20,
                    fontWeight: FontWeight.bold),
                SizedBox(
                  height: h(20),
                ),
                Container(
                  height: h(590),
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
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      text(
                                          text: "Date : 12/12/2121",
                                          color: Colors.grey,
                                          fontsize: 12),
                                      SizedBox(
                                        width: w(20),
                                      ),
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
              ],
            ),
          ),
        ));
  }
}
