import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartcart/Core/Consts.dart';
import 'package:smartcart/Ui/ButtomNavBar/NavigationBar.dart';
import 'package:smartcart/Ui/HomePage/HomePage.dart';
import 'package:smartcart/Ui/Register.dart/Register.dart';
import 'package:smartcart/Widgets/Container.dart';
import 'package:smartcart/Widgets/Nav.dart';
import 'package:smartcart/Widgets/Text.dart';
import 'package:smartcart/Widgets/TextForm.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController textEditingController = TextEditingController();
  TextEditingController textEditingController2 = TextEditingController();
  String username;
  String password;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          width: size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: h(60),
              ),
              SizedBox(
                height: h(120),
                width: w(124),
                child: SvgPicture.asset(
                  "assets/images/smartcart.svg",
                  fit: BoxFit.cover,
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
                      width: w(150),
                      child: text(
                          color: Colors.black, text: "Log in", fontsize: 18)),
                ],
              ),
              SizedBox(
                height: h(40),
              ),
              container(
                  hight: h(60),
                  width: w(280),
                  borderRadius: 30,
                  bordercolor: Colors.orange[900],
                  child: Center(
                    child: textform(
                        validation: "name",
                        hint: "Username",
                        controller: textEditingController,
                        function: (value) {
                          username = value;
                        },
                        hintColor: Colors.grey,
                        hintsize: 14),
                  )),
              SizedBox(
                height: h(30),
              ),
              container(
                  hight: h(60),
                  width: w(280),
                  borderRadius: 30,
                  bordercolor: Colors.orange[900],
                  child: Center(
                    child: textform(
                        validation: "password",
                        hint: "password",
                        controller: textEditingController2,
                        function: (value) {
                          password = value;
                        },
                        hintColor: Colors.grey,
                        hintsize: 14),
                  )),
              SizedBox(
                height: h(30),
              ),
              text(text: "Forget password?", color: Colors.black, fontsize: 16),
              SizedBox(
                height: h(40),
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
                            text: "Log in",
                            color: Colors.white,
                            fontsize: 22))),
              ),
              SizedBox(
                height: h(50),
              ),
              InkWell(
                onTap: () {
                  nav(context, Register());
                },
                child: text(
                    text: "Register Are you a new customer?",
                    color: Colors.black,
                    fontsize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
