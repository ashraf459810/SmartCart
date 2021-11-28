import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartcart/Core/Consts.dart';
import 'package:smartcart/Ui/ButtomNavBar/NavigationBar.dart';
import 'package:smartcart/Ui/HomePage/HomePage.dart';
import 'package:smartcart/Ui/Login/Login.dart';
import 'package:smartcart/Ui/Register.dart/SelectLocation.dart';
import 'package:smartcart/Widgets/Container.dart';

import 'package:smartcart/Widgets/Nav.dart';
import 'package:smartcart/Widgets/Text.dart';
import 'package:smartcart/Widgets/TextForm.dart';

class Register extends StatefulWidget {
  Register({Key key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String chosenlocation;
  bool isCheck = false;
  String firstname;
  String lastname;
  String smartcartusername;
  String password;
  String repasswrod;
  String email;
  String phone;
  String city;
  String address;
  TextEditingController firstnamec = TextEditingController();
  TextEditingController lastnamec = TextEditingController();
  TextEditingController smartcartusernamec = TextEditingController();
  TextEditingController passwrodc = TextEditingController();
  TextEditingController repasswrodc = TextEditingController();
  TextEditingController emailc = TextEditingController();
  TextEditingController phonec = TextEditingController();
  TextEditingController cityc = TextEditingController();
  TextEditingController addressc = TextEditingController();

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
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.orange,
                    ),
                  )))),
      body: SingleChildScrollView(
        child: Container(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            SizedBox(
              height: h(60),
            ),
            SizedBox(
              height: h(100),
              width: w(150),
              child: SvgPicture.asset(
                "assets/images/smartcart.svg",
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(
              height: h(50),
            ),
            Row(
              children: [
                container(
                    color: Colors.grey[50],
                    hight: h(40),
                    width: w(200),
                    child: text(
                        color: Colors.black,
                        text: "Create a new account",
                        fontsize: 18)),
              ],
            ),
            SizedBox(
              height: h(25),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    container(width: w(100), child: text(text: "First Name")),
                    container(
                      hight: h(44),
                      width: w(150),
                      borderRadius: 30,
                      bordercolor: Colors.orange[900],
                      child: textform(
                          hint: "first name",
                          validation: "name",
                          controller: firstnamec,
                          function: (value) {
                            firstname = value;
                          },
                          hintsize: 14,
                          hintColor: Colors.grey),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    container(width: w(100), child: text(text: "Last Name")),
                    container(
                        hight: h(44),
                        width: w(150),
                        borderRadius: 30,
                        bordercolor: Colors.orange[900],
                        child: textform(
                            hint: "last name",
                            validation: "name",
                            controller: lastnamec,
                            function: (value) {
                              lastname = value;
                            },
                            hintsize: 14,
                            hintColor: Colors.grey))
                  ],
                )
              ],
            ),
            SizedBox(
              height: h(20),
            ),
            registertap("SmartCart Username", "smartCart name", "name", (val) {
              smartcartusername = val;
            }, w(140), smartcartusernamec),
            SizedBox(
              height: h(20),
            ),
            registertap("Password", "******", "password", (val) {
              password = val;
            }, w(90), passwrodc),
            SizedBox(
              height: h(20),
            ),
            registertap("RetypePassword", "******", "password", (val) {
              repasswrod = val;
            }, w(120), repasswrodc),
            SizedBox(
              height: h(20),
            ),
            registertap("EmailAddress", "jandou@hotmail.com", "email", (val) {
              email = val;
            }, w(100), emailc),
            SizedBox(
              height: h(20),
            ),
            registertap("Phone number", "75076117", "number", (val) {
              phone = val;
            }, w(100), phonec),
            SizedBox(
              height: h(20),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                container(
                    width: w(150),
                    child: text(text: "City - Select a location")),
                GestureDetector(
                  onTap: () {
                    nav(context, SelectLocation(
                      callback: (value) {
                        chosenlocation = value;
                        setState(() {});
                      },
                    ));
                  },
                  child: container(
                      hight: h(44),
                      width: w(330),
                      borderRadius: 30,
                      bordercolor: Colors.orange[900],
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: chosenlocation != "Sulaymaniyah City Center"
                                ? w(120)
                                : w(150),
                            child: Center(
                              child: text(
                                  text: chosenlocation ?? "Select location",
                                  color: Colors.grey),
                            ),
                          ),
                          SizedBox(
                            width: w(150),
                          ),
                          Icon(Icons.arrow_drop_down),
                        ],
                      )),
                ),
                SizedBox(
                  height: h(20),
                ),
                registertap("Address", "naz naz", "name", (val) {
                  address = val;
                }, w(75), addressc),
              ],
            ),
            SizedBox(
              height: h(20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                text(
                    text: "I agree to SmartCart Terms and Privacy",
                    fontsize: 16),
                Checkbox(
                    value: isCheck,
                    checkColor: Colors.yellowAccent, // color of tick Mark
                    activeColor: AppColor.maincolor,
                    onChanged: (bool value) {
                      setState(() {
                        isCheck = value;
                      });
                    }),
              ],
            ),
            SizedBox(
              height: h(20),
            ),
            InkWell(
              onTap: () {
                nav(context, NavigationBar());
              },
              child: container(
                  hight: h(60),
                  width: w(300),
                  borderRadius: 30,
                  color: AppColor.maincolor,
                  child: Center(
                      child: text(
                          text: "Register",
                          color: Colors.white,
                          fontsize: 22))),
            ),
            SizedBox(
              height: h(20),
            ),
            InkWell(
                onTap: () {
                  nav(context, Login());
                },
                child: text(
                    text: "Log In Already have an account?", fontsize: 14)),
            SizedBox(
              height: h(20),
            )
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
