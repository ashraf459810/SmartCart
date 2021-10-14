import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartcart/Widgets/Container.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double itemcount = 20;
  ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(h(75)),
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            actions: [
              Padding(
                padding: const EdgeInsets.only(top: 30.0, right: 20),
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
          SliverList(
            delegate: SliverChildListDelegate(
              <Widget>[
                Container(
                  height: h(itemcount * 78.2),
                  child: GridView.builder(
                    controller: scrollController,
                    scrollDirection: Axis.vertical,
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 200,
                        childAspectRatio: 3 / 2,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20),
                    itemCount: itemcount.toInt(),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          print(index);
                        },
                        child: container(
                            width: w(200),
                            hight: h(100),
                            color: Colors.white,
                            borderRadius: 20,
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                              child: Image.network(
                                "https://besthqwallpapers.com/Uploads/8-4-2021/161741/thumb2-adidas-orange-logo-4k-orange-neon-lights-creative-orange-abstract-background.jpg",
                                height: h(133),
                                width: w(200),
                                fit: BoxFit.cover,
                              ),
                            )),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
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
