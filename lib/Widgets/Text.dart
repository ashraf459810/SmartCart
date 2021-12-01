import 'package:flutter/material.dart';

Widget text(
    {String text,
    Color color,
    double fontsize,
    FontWeight fontWeight,
    String fontfamily,
    TextAlign textAlign,
    TextDecoration textDecoration}) {
  return Text(
    text,
    textAlign: textAlign ?? TextAlign.center,
    style: TextStyle(
        decoration: textDecoration ?? TextDecoration.none,
        fontFamily: "font",
        color: color,
        fontSize: fontsize,
        fontWeight: fontWeight ?? FontWeight.normal),
  );
}
