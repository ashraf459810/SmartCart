import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartcart/Ui/ButtomNavBar/NavigationBar.dart';

import 'package:smartcart/Ui/Login/Login.dart';
import 'package:smartcart/Ui/splah/bloc/splash_bloc.dart';

import 'package:smartcart/Widgets/Nav.dart';

class Gif extends StatefulWidget {
  Gif({Key key}) : super(key: key);

  @override
  _GifState createState() => _GifState();
}

class _GifState extends State<Gif> {
  SplashBloc splashBloc = SplashBloc();
  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      splashBloc.add(GetIfLoginEvent());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
        body: BlocListener(
      bloc: splashBloc,
      listener: (context, state) {
        if (state is GetIsLoginState) {
          if (state.isLogin) {
            navWithReplacement(context, NavigationBar());
          } else {
            navWithReplaceAll(context, Login());
          }
        }
      },
      child: Container(
          height: size.height,
          width: size.width,
          child: Image.asset(
            "assets/images/Cart.gif",
            fit: BoxFit.contain,
          )),
    ));
  }
}
