import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartcart/Ui/HomePage/HomePage.dart';
import 'package:smartcart/Widgets/Text.dart';

class Terms extends StatefulWidget {
  Terms({Key key}) : super(key: key);

  @override
  _TermsState createState() => _TermsState();
}

class _TermsState extends State<Terms> {
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
                elevation: 0,
                title:
                    text(text: "Return & Refund Policy", color: Colors.black),
                centerTitle: true,
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
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              text(
                  textAlign: TextAlign.left,
                  text:
                      "•	 You can return your goods by claiming a reason of return with a period of 14 days from the date of received item from the supplier.\n•	 To return your product, you must create a return ticket by clicking on “   ”.\n•	The return cost must be paid by the buyer if the return item has no issue and matches buyer’s requested order.\n•	You can not have a refund if:",
                  fontsize: 16.sp),
              text(
                  textAlign: TextAlign.left,
                  fontsize: 16.sp,
                  text:
                      'You knew the item was faulty when you bought it.\n•	Damaged an item by trying to repair it by yourself or by someone else to it.\n•	No longer want an item (because it is the wrong size or color).\n•	Personalized items and custom-made items, for example curtains.'),
              text(
                  textAlign: TextAlign.left,
                  fontsize: 16.sp,
                  text:
                      "•	Cosmetics and personal care products, undergarments, swimwear, bikinis, books, magazines, copyable software, digital programs and digital keycodes, DVD, CD and cassettes, and stationary consumables like (toner, cartridge, tape, etc.)\n•	If the product reaches us in a used, worn or washed condition. We may have to send it back to you, in this case no refund will be made.\n•	Home appliances such as refrigerators, washing machines and televisions.\n•	In case any damage / defect is detected in the product after the product has been opened by authorized service employees, you must have the authorized service employees fill in a detailed due diligence report / service form / service report in which the problem is noted. You can have the refund by submitting the damage report.")
            ],
          ),
        ));
  }

  void loadData() async {
    final _loadedData = await rootBundle.loadString("assets/return.txt");
    setState(() {
      data = _loadedData;
    });
  }
}
