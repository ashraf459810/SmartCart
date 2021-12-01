import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartcart/Core/Consts.dart';
import 'package:smartcart/Ui/HomePage/brand_items.dart';
import 'package:smartcart/Widgets/Container.dart';
import 'package:smartcart/Widgets/Nav.dart';
import 'package:smartcart/Widgets/Text.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double itemcount = 10;
  ScrollController scrollController = ScrollController();
  ScrollController scrollController2 = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(h(75)),
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            actions: [
              Padding(
                padding: EdgeInsets.only(top: h(40.0), right: w(20)),
                child: SvgPicture.asset(
                  "assets/images/profileplus.svg",
                  height: h(25),
                  width: w(20),
                ),
              )
            ],
          )),
      body: CustomScrollView(
        physics: ScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        controller: scrollController,
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.grey[50],
            expandedHeight: h(300),
            flexibleSpace: FlexibleSpaceBar(
                titlePadding: EdgeInsets.only(right: 10, top: 100),
                title: Center(
                  child: Image.asset(
                    "assets/images/homeimage.png",
                    fit: BoxFit.cover,
                  ),
                )),
          ),
          brandSliver("Turkey", "assets/images/zara.png"),
          brandSliver("Dubai", "assets/images/mh.png"),
        ],
      ),
    );
  }

  SliverList brandSliver(String brand, String image) {
    return SliverList(
      delegate: SliverChildListDelegate(
        <Widget>[
          // container(color: Colors.red, hight: 1000, width: 100)
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: w(10),
              ),
              text(text: brand, fontWeight: FontWeight.bold, fontsize: 20.sp)
            ],
          ),
          SizedBox(
            height: h(10),
          ),
          Container(
            height: h(itemcount * 39.2),
            child: GridView.builder(
              controller: scrollController2,
              physics: ScrollPhysics(parent: NeverScrollableScrollPhysics()),
              scrollDirection: Axis.vertical,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  mainAxisExtent: 60,
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 7 / 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
              itemCount: itemcount.toInt(),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    nav(context, BrandItems());
                  },
                  child: container(
                      bordercolor: AppColor.maincolor,
                      width: w(150),
                      hight: h(100),
                      color: Colors.white,
                      borderRadius: 20,
                      child: Center(
                        child: Image.asset(
                          image,
                          height: h(50),
                          width: w(100),
                          fit: BoxFit.contain,
                        ),
                      )),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

double h(double h) {
  return ScreenUtil().setHeight(h);
}

double w(double w) {
  return ScreenUtil().setWidth(w);
}
