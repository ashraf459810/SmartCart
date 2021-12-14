import 'package:flutter/material.dart';

import 'App/app.dart';
import 'injection.dart';

void main() async {
  await iniGetIt();
  runApp(MyApp());
}
