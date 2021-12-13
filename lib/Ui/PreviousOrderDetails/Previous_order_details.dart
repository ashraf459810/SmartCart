import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartcart/Core/Consts.dart';
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
                          text: "Status : Arrived",
                          color: AppColor.maincolor,
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
            height: h(40),
          ),
          Center(
              child:
                  orderInfo("order title", "Laptop", w(70), Colors.grey[50])),
          SizedBox(
            height: h(15),
          ),
          Center(
            child: orderInfo("Quantity", "1", w(70), Colors.grey[50]),
          ),
          SizedBox(
            height: h(15),
          ),
          Center(
            child: orderInfo("Note", "color red", w(50), Colors.grey[50]),
          ),
          SizedBox(
            height: h(15),
          ),
          Center(
            child:
                orderInfo("Location", "Erbil : NazNaz", w(70), Colors.grey[50]),
          ),
          SizedBox(
            height: h(15),
          ),
          Center(
            child: orderInfo("Wrap", "Gift", w(50), Colors.grey[50]),
          ),
          SizedBox(
            height: h(15),
          ),
          Center(
            child: orderInfo("Price", "1200USD", w(50), Colors.grey[50]),
          ),
          SizedBox(
            height: h(70),
          ),
          InkWell(
            onTap: () {
              bottomSheetDetails();
            },
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: container(
                  hight: h(60),
                  width: w(300),
                  borderRadius: 30,
                  color: AppColor.maincolor,
                  child: Center(
                      child: text(
                          text: "Order Timeline",
                          color: Colors.white,
                          fontsize: 22))),
            ),
          ),
        ],
      ),
    );
  }

  Widget orderInfo(String hint, String inputhint, double hintwidth, Color color,
      [double hight]) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        container(
            alignment: Alignment.center,
            color: color ?? Colors.grey[50],
            width: hintwidth,
            child: text(text: "$hint", textAlign: TextAlign.start)),
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

  Future<void> bottomSheetDetails() {
    return showModalBottomSheet<void>(
      isScrollControlled: true,
      constraints: BoxConstraints(maxHeight: h(700)),
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Center(
            child: ListView(
              shrinkWrap: true,
              // mainAxisAlignment: MainAxisAlignment.center,
              // mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  height: h(10),
                ),
                Container(
                  child: Center(
                    child: text(
                        text: "TimeLine",
                        fontsize: 24.sp,
                        color: AppColor.maincolor),
                  ),
                  height: h(30),
                ),
                SizedBox(
                  height: h(15),
                ),
                Center(
                  child:
                      orderInfo("Processed", "20/11/2021", w(75), Colors.white),
                ),
                SizedBox(
                  height: h(15),
                ),
                Center(
                  child:
                      orderInfo("Confirmed", "20/11/2021", w(70), Colors.white),
                ),
                SizedBox(
                  height: h(15),
                ),
                Center(
                  child:
                      orderInfo("Purchased", "11/11/2021", w(75), Colors.white),
                ),
                SizedBox(
                  height: h(15),
                ),
                Center(
                  child: orderInfo(
                      "Arrived To Office", "20/11/2021", w(110), Colors.white),
                ),
                SizedBox(
                  height: h(15),
                ),
                Center(
                  child:
                      orderInfo("Shipped", "20/11/2021", w(60), Colors.white),
                ),
                SizedBox(
                  height: h(15),
                ),
                Center(
                  child:
                      orderInfo("Delivered", "20/11/2021", w(70), Colors.white),
                ),
                SizedBox(
                  height: h(20),
                ),
                SizedBox(
                    height: h(150),
                    width: w(200),
                    child: Image.asset(
                      "assets/images/timeLine.png",
                      fit: BoxFit.contain,
                    ))
              ],
            ),
          ),
        );
      },
    );
  }
}
