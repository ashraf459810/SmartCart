import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartcart/Core/Consts.dart';
import 'package:smartcart/Ui/ButtomNavBar/NavigationBar.dart';
import 'package:smartcart/Ui/HomePage/HomePage.dart';
import 'package:smartcart/Ui/Login/bloc/login_bloc.dart';
import 'package:smartcart/Ui/Register.dart/Register.dart';
import 'package:smartcart/Widgets/Container.dart';
import 'package:smartcart/Widgets/Nav.dart';
import 'package:smartcart/Widgets/Text.dart';
import 'package:smartcart/Widgets/TextForm.dart';
import 'package:toast/toast.dart';

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
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: Scaffold(
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
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.orange,
                        ),
                      ),
                    )))),
        body: Container(
          height: size.height,
          width: size.width,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: w(30)),
            child: ListView(
              children: [
                SizedBox(
                  height: h(10),
                ),
                SizedBox(
                  height: h(120),
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: w(10),
                    ),
                    container(
                        color: Colors.grey[50],
                        child: text(
                            color: Colors.black,
                            text: "Log in",
                            fontsize: 20.sp)),
                  ],
                ),
                SizedBox(
                  height: h(10),
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
                text(
                    text: "Forgot password?",
                    color: Colors.black,
                    fontsize: 16),
                SizedBox(
                  height: h(40),
                ),
                Builder(builder: (context) {
                  return InkWell(
                    onTap: () {
                      if (username != null && password != null) {
                        context.read<LoginBloc>().add(UserLoginEvent(
                            password: password, userName: username));
                      } else {
                        Toast.show("Enter name and password", context,
                            backgroundColor: Colors.orange);
                      }
                    },
                    child: BlocConsumer<LoginBloc, LoginState>(
                      listener: (context, state) {
                        if (state is Error) {
                          Toast.show(state.error, context,
                              backgroundColor: Colors.orange);
                        }
                        if (state is UserLoginState) {
                          nav(context, NavigationBar());
                        }
                      },
                      builder: (context, state) {
                        if (state is Loading) {
                          return Center(
                              child: CircularProgressIndicator(
                            backgroundColor: Colors.orange,
                          ));
                        }
                        return container(
                            hight: h(60),
                            width: w(300),
                            borderRadius: 30,
                            color: AppColor.maincolor,
                            child: Center(
                                child: text(
                                    text: "Log in",
                                    color: Colors.white,
                                    fontsize: 22)));
                      },
                    ),
                  );
                }),
                SizedBox(
                  height: h(50),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    text(
                        text: "Are you a new customer ?",
                        color: Colors.black,
                        fontsize: 16.sp),
                    SizedBox(
                      width: w(5),
                    ),
                    InkWell(
                      onTap: () {
                        nav(context, Register());
                      },
                      child: text(
                        textDecoration: TextDecoration.underline,
                        text: "Register",
                        color: AppColor.maincolor,
                        fontWeight: FontWeight.bold,
                        fontsize: 16.sp,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
