import 'dart:async';

import 'package:flutter/material.dart';
import 'package:smartcart/Ui/ButtomNavBar/NavigationBar.dart';
import 'package:smartcart/Ui/Login/Login.dart';

import 'package:smartcart/Widgets/Nav.dart';

class Gif extends StatefulWidget {
  Gif({Key key}) : super(key: key);

  @override
  _GifState createState() => _GifState();
}

class _GifState extends State<Gif> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      navWithReplacement(
        context,
        Login(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
          height: size.height,
          width: size.width,
          child: Image.asset(
            "assets/images/Cart.gif",
            fit: BoxFit.contain,
          )),
    );
  }
}
