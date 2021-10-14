import 'package:flutter/material.dart';
import 'package:smartcart/Ui/Cart/Cart.dart';
import 'package:smartcart/Ui/HomePage/HomePage.dart';
import 'package:smartcart/Ui/More/More.dart';
import 'package:smartcart/Ui/Profile/profile.dart';
import 'package:smartcart/Widgets/BottomNavBar.dart';

class NavigationBar extends StatefulWidget {
  NavigationBar({Key key}) : super(key: key);

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  ScrollController controller = ScrollController();
  List<NavBarItem> navitems = [
    NavBarItem("assets/images/homepage.svg", ""),
    NavBarItem("assets/images/cart.svg", ""),
    NavBarItem("assets/images/profile.svg", ""),
    NavBarItem("assets/images/more.svg", "")
  ];

  var index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ButtomNavBar(
        navitems: navitems,
        routes: [HomePage(), Cart(), Profile(), More()],
      ),
    );
  }
}
