import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartcart/Ui/HomePage/HomePage.dart';
import 'package:smartcart/Widgets/Container.dart';
import 'package:smartcart/Widgets/Text.dart';

class PreviousOrderDetails extends StatefulWidget {
  PreviousOrderDetails({Key key}) : super(key: key);

  @override
  _PreviousOrderDetailsState createState() => _PreviousOrderDetailsState();
}

class _PreviousOrderDetailsState extends State<PreviousOrderDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(h(50)),
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            leading: Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 20),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.orange,
                  ),
                ),
              ),
            ),
            actions: [
              Expanded(
                child: Container(
                  // color: Colors.red,
                  // width: w(250),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // text(text: "Laptop", color: Colors.black),
                      text(
                          text: "Date : 2021/10/10",
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontsize: 16.sp),
                    ],
                  ),
                ),
              )
            ],
          )),
      body: ListView(
        children: [
          SizedBox(
            height: h(60),
          ),
          Center(child: orderInfo("order title", "Laptop", w(70))),
          SizedBox(
            height: h(20),
          ),
          Center(
            child: orderInfo("Quantity", "1", w(70)),
          ),
          SizedBox(
            height: h(20),
          ),
          Center(
            child: orderInfo("Note", "color red", w(70)),
          ),
          SizedBox(
            height: h(20),
          ),
          Center(
            child: orderInfo("Location", "Erbil : NazNaz", w(70)),
          ),
          SizedBox(
            height: h(20),
          ),
          Center(
            child: orderInfo("Wrap", "Gift", w(70)),
          ),
          SizedBox(
            height: h(20),
          ),
          Center(
            child: orderInfo("Price", "1200USD", w(70)),
          ),
        ],
      ),
    );
  }

  Widget orderInfo(String hint, String inputhint, double hintwidth,
      [double hight]) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        container(
            color: Colors.grey[50],
            width: hintwidth,
            child: text(text: "$hint")),
        container(
          hight: hight == null ? h(44) : hight,
          width: w(330),
          borderRadius: 30,
          bordercolor: Colors.orange[900],
          child: text(text: inputhint),
        ),
      ],
    );
  }
}
