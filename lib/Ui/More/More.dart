import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartcart/Core/Consts.dart';
import 'package:smartcart/Ui/HomePage/HomePage.dart';
import 'package:smartcart/Ui/Login/Login.dart';
import 'package:smartcart/Ui/Notifications/Notifications.dart';
import 'package:smartcart/Ui/Privacy/Privacy.dart';
import 'package:smartcart/Ui/Refund/Refund.dart';
import 'package:smartcart/Ui/Terms&Conditions/Terms.dart';
import 'package:smartcart/Widgets/Container.dart';
import 'package:smartcart/Widgets/Nav.dart';
import 'package:smartcart/Widgets/Text.dart';

class More extends StatefulWidget {
  More({Key key}) : super(key: key);

  @override
  _MoreState createState() => _MoreState();
}

class _MoreState extends State<More> {
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
              nav(context, Notifications());
            },
            child: sittingscontainer(
                "Notifications", "assets/images/alarmicon.svg"),
          ),
          SizedBox(
            height: h(40),
          ),
          InkWell(
            onTap: () {
              nav(context, Refund());
            },
            child:
                sittingscontainer("Refund", "assets/images/settingsicon.svg"),
          ),
          SizedBox(
            height: h(40),
          ),
          Center(
            child: Container(
              height: h(1),
              width: w(300),
              color: Colors.orange[900],
            ),
          ),
          SizedBox(
            height: h(40),
          ),
          InkWell(
            onTap: () {
              nav(context, Terms());
            },
            child: sittingscontainer(
                "Terms & Conditions", "assets/images/questionmark.svg"),
          ),
          SizedBox(
            height: h(40),
          ),
          InkWell(
            onTap: () {
              nav(context, Privacy());
            },
            child:
                sittingscontainer("Privacy", "assets/images/questionmark.svg"),
          ),
          SizedBox(
            height: h(40),
          ),
          GestureDetector(
            onTap: () {
              _showMyDialog();
            },
            child: sittingscontainer("Logout", "assets/images/logouticin.svg"),
          ),
          SizedBox(
            height: h(40),
          ),
        ],
      ),
    );
  }

  Widget sittingscontainer(String textt, String image) {
    return container(
        hight: h(60),
        width: w(300),
        borderRadius: 30,
        bordercolor: AppColor.maincolor,
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(
            children: [
              SvgPicture.asset("$image", height: h(25), width: w(25)),
            ],
          ),
          Row(
            children: [
              container(
                  alignment: Alignment.center,
                  width: w(200),
                  child: text(
                      text: textt, fontsize: 18, textAlign: TextAlign.start)),
            ],
          ),
        ]));
  }

  Future<void> _showMyDialog() async {
    showGeneralDialog(
      barrierLabel: "Barrier",
      barrierDismissible: true,
      barrierColor: Colors.grey[100].withOpacity(1),
      transitionDuration: Duration(milliseconds: 700),
      context: context,
      pageBuilder: (_, __, ___) {
        return Container(
          height: h(300),
          child: Stack(
            children: [
              Opacity(
                opacity: 0.1,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: h(300),
                    margin: EdgeInsets.only(bottom: 50, left: 12, right: 12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: h(500),
                left: w(37),
                child: Center(
                  child: container(
                      hight: h(50),
                      width: w(300),
                      borderRadius: 30,
                      bordercolor: Colors.orange[900],
                      child: Center(
                          child: Container(
                        child: text(
                            text: "Do you really want to logout?",
                            color: Colors.black,
                            fontsize: 12.sp),
                      ))),
                ),
              ),
              Positioned(
                top: h(570),
                left: w(80),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Login(),
                        ));
                      },
                      child: container(
                          hight: h(30),
                          width: w(100),
                          borderRadius: 30,
                          color: AppColor.maincolor,
                          child: Center(
                            child: text(
                                text: "Yes", color: Colors.white, fontsize: 14),
                          )),
                    ),
                    SizedBox(
                      width: w(10),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: container(
                          hight: h(30),
                          width: w(100),
                          borderRadius: 30,
                          color: AppColor.maincolor,
                          child: Center(
                            child: text(
                                text: "No", color: Colors.white, fontsize: 14),
                          )),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
      transitionBuilder: (_, anim, __, child) {
        return SlideTransition(
          position: Tween(begin: Offset(0, 1), end: Offset(0, 0)).animate(anim),
          child: child,
        );
      },
    );
  }
}
