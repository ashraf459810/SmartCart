import 'package:flutter/material.dart';
import 'package:smartcart/Widgets/Container.dart';

import 'HomePage.dart';

class BrandItems extends StatefulWidget {
  BrandItems({Key key}) : super(key: key);

  @override
  _BrandItemsState createState() => _BrandItemsState();
}

class _BrandItemsState extends State<BrandItems> {
  double itemcount = 30;
  ScrollController scrollController2 = ScrollController();
  ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: ScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        controller: scrollController,
        children: [
          SizedBox(
            height: h(50),
          ),
          Container(
            height: h(itemcount * 79.2),
            child: GridView.builder(
              controller: scrollController2,
              physics: ScrollPhysics(parent: NeverScrollableScrollPhysics()),
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
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        child: Image.asset(
                          "assets/images/adidasicon.png",
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
    );
  }
}
