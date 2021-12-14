// import 'package:flutter/material.dart';
// import 'package:smartcart/Core/Consts.dart';
// import 'package:smartcart/Ui/HomePage/HomePage.dart';
// import 'package:smartcart/Widgets/Container.dart';
// import 'package:smartcart/Widgets/CustomListView.dart';
// import 'package:smartcart/Widgets/Text.dart';
// import 'package:toast/toast.dart';

// class SelectLocation extends StatefulWidget {
//   final Function callback;
//   SelectLocation({Key key, this.callback}) : super(key: key);

//   @override
//   _SelectLocationState createState() => _SelectLocationState();
// }

// class _SelectLocationState extends State<SelectLocation> {
//   List<String> erbilcities = ["City Center", "Masif", "Soran", "Shaqlawa"];
//   List<String> duhokcities = ["City Center", "Zaxo"];
//   List<String> sulymaniacities = ["City Center", "Halabja"];
//   List<String> kerkukcities = ["City Center"];
//   String chosenlocation;

//   @override
//   Widget build(BuildContext context) {
//     return WillPopScope(
//       onWillPop: willpop,
//       child: Scaffold(
//         body: Container(
//           width: w(500),
//           height: h(800),
//           color: Colors.grey[50],
//           alignment: Alignment.center,
//           child: Column(
//             children: [
//               SizedBox(
//                 height: h(30),
//               ),
//               text(text: "Select a location", fontsize: 18),
//               SizedBox(
//                 height: h(10),
//               ),
//               container(
//                   hight: h(700),
//                   width: w(350),
//                   bordercolor: Colors.orange[900],
//                   borderRadius: 30,
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 10.0),
//                     child: Column(
//                       children: [
//                         citylocations(erbilcities, "Erbil"),
//                         citylocations(duhokcities, "Duhok"),
//                         citylocations(sulymaniacities, "Sulaymaniyah"),
//                         citylocations(kerkukcities, "kerkuk"),
//                       ],
//                     ),
//                   )),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget citylocations(List<String> city, String cityname) {
//     return Column(
//       children: [
//         SizedBox(
//           height: h(10),
//         ),
//         Row(
//           children: [
//             Container(
//               child: text(
//                   color: AppColor.maincolor, text: "$cityname", fontsize: 16),
//             ),
//           ],
//         ),
//         customlistview(
//             itemcount: city.length,
//             hight: h(50),
//             width: w(100),
//             direction: "vertical",
//             padding: 10.0,
//             function: (context, index) {
//               return GestureDetector(
//                 onTap: () {
//                   chosenlocation = "$cityname " + city[index];
//                   willpop();
//                 },
//                 child: Container(
//                   height: h(40),
//                   child: Center(
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         text(
//                             text: "${city[index]}",
//                             color: Colors.black,
//                             fontsize: 16),
//                       ],
//                     ),
//                   ),
//                 ),
//               );
//             }),
//       ],
//     );
//   }

//   Future<bool> willpop() async {
//     if (chosenlocation != null) {
//       widget.callback(chosenlocation);
//       Navigator.of(context).pop();
//     } else
//       Toast.show("please select location first", context);
//     return false;
//   }
// }
