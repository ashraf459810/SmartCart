import 'package:flutter/material.dart';
import 'package:smartcart/Core/Consts.dart';
import 'package:smartcart/Ui/Editprofile/EditProfile.dart';
import 'package:smartcart/Ui/HomePage/HomePage.dart';
import 'package:smartcart/Widgets/Container.dart';
import 'package:smartcart/Widgets/Dropdown.dart';
import 'package:smartcart/Widgets/Text.dart';

class DeliverToAnotherLocation extends StatefulWidget {
  DeliverToAnotherLocation({Key key}) : super(key: key);

  @override
  _DeliverToAnotherLocationState createState() =>
      _DeliverToAnotherLocationState();
}

class _DeliverToAnotherLocationState extends State<DeliverToAnotherLocation> {
  String address;
  TextEditingController addressc = TextEditingController();
  String city = "select city";
  List<String> cities = ["Erbil", "Duhok", "sulymaniah"];
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
            height: h(100),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 33.0),
                child: text(text: "Select city"),
              ),
            ],
          ),
          SizedBox(
            height: h(5),
          ),
          container(
              hight: h(44),
              width: w(330),
              borderRadius: 30,
              bordercolor: Colors.orange[900],
              child: DropDown(
                list: cities,
                hint: city,
                onchanged: (value) {
                  city = value;
                  setState(() {});
                },
              )),
          SizedBox(
            height: h(30),
          ),
          registertap("Address", "enter your address", "name", (val) {
            address = val;
          }, 70, addressc),
          SizedBox(
            height: h(50),
          ),
          container(
              hight: h(60),
              width: w(300),
              borderRadius: 30,
              color: AppColor.maincolor,
              child: Center(
                  child:
                      text(text: "Save", color: Colors.white, fontsize: 22))),
        ]))));
  }
}
