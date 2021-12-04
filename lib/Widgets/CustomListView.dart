import 'package:flutter/material.dart';

Widget customlistview(
    {final double hight,
    final double width,
    final int itemcount,
    final direction,
    final double padding,
    final controller,
    Function function,
    ScrollPhysics scrollPhysics}) {
  return ListView.builder(
      physics: scrollPhysics ??
          ScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      shrinkWrap: true,
      controller: controller ?? ScrollController(),
      padding: EdgeInsets.symmetric(vertical: padding) ?? EdgeInsets.all(10),
      itemCount: itemcount,
      scrollDirection:
          direction == "vertical" ? Axis.vertical : Axis.horizontal,
      itemBuilder: function);
}
