import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartcart/Core/Consts.dart';
import 'package:smartcart/Ui/MyOrders/MyOrders.dart';
import 'package:smartcart/Ui/HomePage/HomePage.dart';
import 'package:smartcart/Ui/NewOrder/NewOrder.dart';
import 'package:smartcart/Widgets/Container.dart';
import 'package:smartcart/Widgets/Nav.dart';
import 'package:smartcart/Widgets/Text.dart';

class Cart extends StatefulWidget {
  Cart({Key key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: h(140),
          ),
          InkWell(
            onTap: () {
              nav(context, NewOrder());
            },
            child: container(
                hight: h(60),
                width: w(300),
                borderRadius: 30,
                bordercolor: AppColor.maincolor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(
                      "assets/images/addicon.svg",
                      height: h(25),
                      width: w(25),
                    ),
                    text(text: "New Order             ", fontsize: 18)
                  ],
                )),
          ),
          SizedBox(
            height: h(35),
          ),
          InkWell(
            onTap: () {
              nav(context, MyOrders());
            },
            child: container(
                hight: h(60),
                width: w(300),
                borderRadius: 30,
                bordercolor: AppColor.maincolor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(
                      "assets/images/moreicon.svg",
                      height: h(25),
                      width: w(25),
                    ),
                    text(text: "My Orders               ", fontsize: 18)
                  ],
                )),
          ),
          SizedBox(
            height: h(140),
          ),
          Center(
            child: SvgPicture.asset(
              "assets/images/carticon.svg",
              height: h(250),
              width: w(250),
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}
