import 'package:flutter/material.dart';
import 'package:smartcart/Core/Consts.dart';
import 'package:smartcart/Ui/DeliverToAnotherLocation/DeliverToAnotherLocation.dart';
import 'package:smartcart/Ui/Editprofile/EditProfile.dart';
import 'package:smartcart/Ui/HomePage/HomePage.dart';
import 'package:smartcart/Widgets/Container.dart';
import 'package:smartcart/Widgets/Dropdown.dart';
import 'package:smartcart/Widgets/Nav.dart';
import 'package:smartcart/Widgets/Text.dart';

class NewOrder extends StatefulWidget {
  NewOrder({Key key}) : super(key: key);

  @override
  _NewOrderState createState() => _NewOrderState();
}

class _NewOrderState extends State<NewOrder> {
  String wrapping = "select wrap";
  String chosenlocation = "select location";
  String note;
  TextEditingController notec = TextEditingController();
  String title;
  String weburl;
  TextEditingController weburlc = TextEditingController();
  TextEditingController titlec = TextEditingController();
  String quantity;
  TextEditingController quantityc = TextEditingController();
  List<String> deliveryoptions = ["Home", "Office"];
  List<String> wrappingway = ["Normal", "Gift"];

  @override
  Widget build(BuildContext context) {
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
      body: Center(
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
                  hint: chosenlocation,
                  onchanged: (value) {
                    chosenlocation = value;
                    setState(() {});
                  },
                  getindex: (val) {},
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
                  hint: wrapping,
                  onchanged: (value) {
                    wrapping = value;
                    setState(() {});
                  },
                  getindex: (val) {},
                )),
            SizedBox(
              height: h(35),
            ),
            container(
                hight: h(60),
                width: w(300),
                borderRadius: 30,
                color: AppColor.maincolor,
                child: Center(
                    child: text(
                        text: "Add Order", color: Colors.white, fontsize: 22))),
            SizedBox(
              height: h(20),
            ),
            InkWell(
                onTap: () {
                  nav(context, DeliverToAnotherLocation());
                },
                child: text(text: "Deliver to another location?"))
          ],
        ),
      ),
    );
  }
}
