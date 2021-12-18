import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartcart/Ui/HomePage/HomePage.dart';
import 'package:smartcart/Widgets/Text.dart';

class AboutUs extends StatefulWidget {
  AboutUs({Key key}) : super(key: key);

  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  String data;
  @override
  void initState() {
    loadData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: h(40),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: text(
                textAlign: TextAlign.left,
                text: "About us",
                color: Colors.orange,
                fontWeight: FontWeight.bold,
                fontsize: 20.sp),
          ),
          // SizedBox(
          //   height: h(10),
          // ),
          Container(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: text(
                  textAlign: TextAlign.left,
                  text:
                      "Smart Cart is online shipping and shopping company to buy and ship Goods from Dubai and Turkey to Iraqwith the most suitable priceand fastest delivery time between 7-14 days.",
                  color: Colors.black,
                  fontsize: 15.sp),
            ),
          ),
          SizedBox(
            height: h(20),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: text(
                textAlign: TextAlign.left,
                text: "Our Values",
                color: Colors.orange,
                fontWeight: FontWeight.bold,
                fontsize: 20.sp),
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: text(
                  textAlign: TextAlign.left,
                  text:
                      "Passion: Passion is at the heart of our company. We are continuously moving forward improving.Integrity: We are honest, open, ethical, and fair. People trust us to adhere to our word.Diversity: We know it takes people with different ideas, strengths, interests, and cultural backgrounds to make our company succeed.",
                  color: Colors.black,
                  fontsize: 15.sp),
            ),
          ),
          SizedBox(
            height: h(20),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: text(
                textAlign: TextAlign.left,
                text: "Vision Statement",
                color: Colors.orange,
                fontWeight: FontWeight.bold,
                fontsize: 20.sp),
          ),

          Container(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: text(
                  textAlign: TextAlign.left,
                  text:
                      "With all the demands on our time in today’s' busy lifestyle, online shopping should be a pleasure rather than a chore. Well, now it is with YOUR own online shopping with Smart Cart.Aim – To offer YOU an easy to use online solution for purchasing & most importantly pay on delivery,",
                  color: Colors.black,
                  fontsize: 15.sp),
            ),
          ),
          SizedBox(
            height: h(20),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: text(
                textAlign: TextAlign.left,
                text: "Mission Statement",
                color: Colors.orange,
                fontWeight: FontWeight.bold,
                fontsize: 20.sp),
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: text(
                  textAlign: TextAlign.left,
                  text:
                      "To offer an online, easy to use, cost effective, quality guaranteed, service orientated products purchasing method for all, locally based service and community responsibility, coupled with purchasing convenience are the cornerstones of our business model.",
                  color: Colors.black,
                  fontsize: 15.sp),
            ),
          ),
        ],
      ),
    );
  }

  void loadData() async {
    final _loadedData = await rootBundle.loadString("assets/about_us.txt");
    setState(() {
      data = _loadedData;
    });
  }
}
