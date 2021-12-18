import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smartcart/Ui/HomePage/HomePage.dart';
import 'package:smartcart/Widgets/Text.dart';

class Privacy extends StatefulWidget {
  Privacy({Key key}) : super(key: key);

  @override
  _PrivacyState createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {
  String data;
  @override
  void initState() {
    loadData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(h(60)),
            child: AppBar(
                centerTitle: true,
                elevation: 0,
                title: text(
                  text: "Privacy Ploicy",
                  color: Colors.black,
                ),
                backgroundColor: Colors.white,
                leading: Padding(
                    padding: const EdgeInsets.only(top: 10.0, left: 20),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.orange,
                      ),
                    )))),
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(w(11.0)),
              child: text(text: data ?? "", textAlign: TextAlign.left),
            ),
          ],
        ));
  }

  void loadData() async {
    final _loadedData = await rootBundle.loadString("assets/privacy.txt");
    setState(() {
      data = _loadedData;
    });
  }
}
