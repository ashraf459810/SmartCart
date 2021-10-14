import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartcart/Core/Consts.dart';
import 'package:smartcart/Ui/ChangePasswrod/ChangePasswrod.dart';
import 'package:smartcart/Ui/Editprofile/EditProfile.dart';
import 'package:smartcart/Ui/HomePage/HomePage.dart';
import 'package:smartcart/Widgets/Container.dart';
import 'package:smartcart/Widgets/Nav.dart';
import 'package:smartcart/Widgets/Text.dart';

class Profile extends StatefulWidget {
  Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
              nav(context, EditProfile());
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
                      "assets/images/profile.svg",
                      height: h(25),
                      width: w(25),
                    ),
                    text(text: "Edit Profile             ", fontsize: 18)
                  ],
                )),
          ),
          SizedBox(
            height: h(35),
          ),
          InkWell(
            onTap: () {
              nav(context, ChangePasswrod());
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
                      "assets/images/lockicon.svg",
                      height: h(25),
                      width: w(25),
                    ),
                    text(text: "Change Password", fontsize: 18)
                  ],
                )),
          ),
          SizedBox(
            height: h(140),
          ),
          Center(
            child: SvgPicture.asset(
              "assets/images/mainprofile.svg",
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
