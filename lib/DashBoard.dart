import 'package:flutter/material.dart';
import 'Search/safty/saftyMain.dart';
import 'Search/equpment/equb_ava_main.dart';
import 'Search/tools/toolsMain.dart';
import 'layout_overview.dart';
import 'package:page_transition/page_transition.dart';
import 'package:lottie/lottie.dart';

DateTime now = new DateTime.now();
DateTime date = new DateTime(now.year, now.month, now.day);

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  List<List> dashButton = [
    [
      "   Find a Room",
      "assest/lot/map.json",
      MaterialStateProperty.all(Colors.lightBlue.shade100),
      layout_overview()
    ],
    [
      " Find an Equipment        ",
      "assest/lot/equip.json",
      MaterialStateProperty.all(Colors.red.shade100),
      equb_main()
    ],
    [
      "    Find a Tool",
      "assest/lot/tool.json",
      MaterialStateProperty.all(Colors.green.shade100),
      toolMain()
    ],
    [
      " Safety Instruction   ",
      "assest/lot/safety.json",
      MaterialStateProperty.all(Colors.yellow.shade100),
      saftyMain()
    ],
    [
      "    QR Scanner",
      "assest/lot/qr.json",
      MaterialStateProperty.all(Colors.purple.shade100),
      toolMain()
    ]
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(title: Text("Welcome")),
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
          child: Column(children: [
            for (var i = 0; i < dashButton.length; i++)
              Container(
                height: height * 0.13,
                width: width * 0.8,
                margin: EdgeInsets.all(10),
                child: ElevatedButton.icon(
                    style: ButtonStyle(backgroundColor: dashButton[i][2]),
                    icon: Container(
                      height: height * 0.1,
                      width: width * 0.25,
                      child:
                          Lottie.asset(dashButton[i][1], fit: BoxFit.fitHeight),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              duration: const Duration(milliseconds: 500),
                              child: dashButton[i][3],
                              type: PageTransitionType.rightToLeft));
                    },
                    label: Text(
                      dashButton[i][0],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: height * 0.025),
                    )),
              )
          ]),
        ),
      )),
    );
  }
}
