import 'package:flutter/material.dart';
import 'package:smartcart/Core/Consts.dart';
import 'package:smartcart/Ui/Editprofile/EditProfile.dart';
import 'package:smartcart/Ui/HomePage/HomePage.dart';
import 'package:smartcart/Widgets/Container.dart';
import 'package:smartcart/Widgets/Text.dart';

class Refund extends StatefulWidget {
  Refund({Key key}) : super(key: key);

  @override
  _RefundState createState() => _RefundState();
}

class _RefundState extends State<Refund> {
  String orderid;
  TextEditingController orderidc = TextEditingController();
  String mobile;
  TextEditingController mobilec = TextEditingController();
  String note;
  TextEditingController notec = TextEditingController();
  String title;
  TextEditingController titlec = TextEditingController();

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
        body: SingleChildScrollView(
          child: Center(
            child: Column(children: [
              SizedBox(
                height: h(10),
              ),
              text(
                  text: "Refund",
                  color: Colors.black,
                  fontsize: 20,
                  fontWeight: FontWeight.bold),
              SizedBox(
                height: h(2),
              ),
              text(
                  text: "Fill the below information to refund",
                  color: Colors.grey,
                  fontsize: 12,
                  fontWeight: FontWeight.normal),
              SizedBox(
                height: h(20),
              ),
              registertap("Order Number", "1212", "number", (val) {
                orderid = val;
              }, 100, orderidc),
              SizedBox(
                height: h(20),
              ),
              registertap("Mobile Number", "750761", "number", (val) {
                mobile = val;
              }, 110, mobilec),
              SizedBox(
                height: h(20),
              ),
              registertap("Title", "bag", "name", (val) {
                title = val;
              }, 50, titlec),
              SizedBox(
                height: h(30),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35),
                child: Row(
                  children: [
                    text(text: "Reason For Return"),
                  ],
                ),
              ),
              SizedBox(
                height: h(5),
              ),
              container(
                  hight: h(150),
                  width: w(330),
                  borderRadius: 30,
                  bordercolor: Colors.orange[900],
                  child: TextField(
                    controller: notec,
                    maxLines: 4,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 20, top: 0),
                        border: InputBorder.none,
                        hintText: "Enter your note"),
                  )),
              SizedBox(
                height: h(40),
              ),
              container(
                  hight: h(60),
                  width: w(300),
                  borderRadius: 30,
                  color: AppColor.maincolor,
                  child: Center(
                      child: text(
                          text: "Refund", color: Colors.white, fontsize: 22))),
            ]),
          ),
        ));
  }
}
