import 'package:flutter/material.dart';
import 'package:smartcart/Core/Consts.dart';
import 'package:smartcart/Ui/HomePage/HomePage.dart';
import 'package:smartcart/Widgets/Container.dart';
import 'package:smartcart/Widgets/Text.dart';
import 'package:smartcart/Widgets/TextForm.dart';
import 'package:toast/toast.dart';

class ChangePasswrod extends StatefulWidget {
  ChangePasswrod({Key key}) : super(key: key);

  @override
  _ChangePasswrodState createState() => _ChangePasswrodState();
}

class _ChangePasswrodState extends State<ChangePasswrod> {
  String password;
  String repasswrod;
  String oldpassword;
  TextEditingController oldpasswordc = TextEditingController();
  TextEditingController passwrodc = TextEditingController();
  TextEditingController repasswrodc = TextEditingController();
  @override
  Widget build(BuildContext context) {
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
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            SizedBox(
              height: h(60),
            ),
            SizedBox(
              height: h(50),
            ),
            registertap("Old Passwrod", "******", "password", (val) {
              oldpassword = val;
            }, w(100), oldpasswordc),
            SizedBox(
              height: h(20),
            ),
            registertap("New Password", "******", "password", (val) {
              password = val;
            }, w(110), passwrodc),
            SizedBox(
              height: h(20),
            ),
            registertap("RetypePassword", "******", "password", (val) {
              repasswrod = val;
            }, w(120), repasswrodc),
            SizedBox(
              height: h(20),
            ),
            SizedBox(
              height: h(20),
            ),
            SizedBox(
              height: h(20),
            ),
            GestureDetector(
              onTap: () {
                if (password == null ||
                    repasswrod == null ||
                    oldpassword == null) {
                  Toast.show("please fill all the fields", context);
                }
              },
              child: container(
                  hight: h(60),
                  width: w(300),
                  borderRadius: 30,
                  color: AppColor.maincolor,
                  child: Center(
                      child: text(
                          text: "Change Passwrod",
                          color: Colors.white,
                          fontsize: 22))),
            ),
            SizedBox(
              height: h(20),
            ),
          ]),
        ),
      ),
    );
  }

  Widget registertap(String hint, String inputhint, String validation,
      Function val, double hintwidth, TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        container(width: hintwidth, child: text(text: "$hint")),
        container(
          hight: h(44),
          width: w(330),
          borderRadius: 30,
          bordercolor: Colors.orange[900],
          child: textform(
              hint: "$inputhint",
              validation: "$validation",
              controller: controller,
              function: (value) {
                val(value);
              },
              hintsize: 14,
              hintColor: Colors.grey),
        ),
      ],
    );
  }
}
