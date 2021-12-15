import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:smartcart/Ui/splah/gif.dart';
import 'package:smartcart/Widgets/Nav.dart';

import 'bloc/splash_bloc.dart';

class Splash extends StatefulWidget {
  Splash({Key key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      navWithReplacement(
        context,
        Gif(),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) => SplashBloc(),
      child: Scaffold(
        body: Container(
          height: size.height,
          width: size.width,
          child: Image.asset(
            "assets/images/splash.png",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
