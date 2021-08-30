import 'dart:math';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter/material.dart';
import 'fancyButton.dart';
import 'floors/floor2.dart';
import 'floors/floor3.dart';
import 'floors/floor1.dart';
import 'Drawer.dart';
import 'package:mma_mse/floationPanel/PanelMain.dart';
import 'package:page_transition/page_transition.dart';
import 'package:mma_mse/Search/SearchAll.dart';
import 'package:qrscan/qrscan.dart' as scanner;
import 'package:mma_mse/wholeQR.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class layout_overview extends StatefulWidget {
  layout_overview({Key key}) : super(key: key);

  @override
  _layout_overviewState createState() => _layout_overviewState();
}

class _layout_overviewState extends State<layout_overview> {
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;
  @override
  void initState() {
    super.initState();

    flutterLocalNotificationsPlugin = new FlutterLocalNotificationsPlugin();
    var android = AndroidInitializationSettings('@mipmap/ic_launcher');
    var initialSet = InitializationSettings(android: android);
    flutterLocalNotificationsPlugin.initialize(initialSet,
        onSelectNotification: onSelectN);

    showNote();
  }

  double _screenWidth;
  double _screenH;
  double adjust = 1;
  final random = Random();

  List<String> tip = [
    "If you want to find the technical elective for your direction in MSE, open the side drawer under menu section and click the Tech Elective Button. \n*Please view most updated information on McMaster Website",
    "If you are trapped by the enthalpy calculation in 3F, you can find the enthalpy calculator under tool section. Go to tool section by open the side drawer under menu section",
    "If you just finished the hardness test and want to transfer the experiment data to data you can understand, you can find the hardness conversion tool under tool section. Go to tool section by open the side drawer under menu section",
    "If you want to find the location of chemical shower and eye washer and be preparaed for the experiment tomorrow, you can find all those information under safety section. Go to safety section by open the side drawer under menu section",
    "If you want to find specific equipment, you can find them under equipment on side drawer under menu section, or click the button on floation panel and type the name of the equipment in quick search button",
    "If you want to find the location of fire distinguisher and familiar yourself with fire code,you can find all those information under safety section. Go to safety section by open the side drawer under menu section.",
    "If you want to use the QR scanner to scan the QR code on equipment or the room, you can find this on floation panel, click the QR code button",
    "If you want to find the layout of the building and the room, follow the page and click the floor you want and find the room you are interested. Or you can find them on side drawer under floors",
    "If you want to check the safety equipment layout for each floor, after entering the floor plan page, click the switch button on the right top corner, you can see those equipment and click them you can see the information for those equipment."
  ];

  Future onSelectN(String message) {
    debugPrint("Message : $message");
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              title: Text("Tip of the day"),
              content: Text(tip[random.nextInt(tip.length)]),
            ));
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  @override
  void goToPage(qr_result) {
    Navigator.push(
        context,
        PageTransition(
            child: to[qr_result], type: PageTransitionType.bottomToTop));
  }

  @override
  Widget build(BuildContext context) {
    if (_screenH / _screenWidth > 1.7) {
      _screenH = _screenH * 0.8;
      adjust = 0.82;
    }
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Layout Overview"),
        backgroundColor: Colors.black,
      ),
      drawer: standardDrawer(header: "JHE Layout"),
      body: Stack(
        children: [
          Positioned(
              top: _screenH / 50,
              left: _screenWidth / 25,
              child: Container(
                constraints: BoxConstraints.expand(
                  width: _screenWidth / 1.1,
                  height: _screenH / 1.3 / adjust,
                ),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assest/bglay.png"),
                        fit: BoxFit.cover)),
              )),
          Positioned(
              top: _screenH / 1.74 / adjust,
              left: _screenWidth / 20,
              child: fancyBut(
                  fontsize: 19,
                  pageTo: floor1(
                    eye: false,
                    fire: false,
                  ),
                  width: _screenWidth / 2.8,
                  height: _screenH / 12,
                  icon: Icons.stairs,
                  buttonName: "Floor I")),
          Positioned(
              top: _screenH / 2.7 / adjust,
              left: _screenWidth / 1.78,
              child: fancyBut(
                  fontsize: 19,
                  pageTo: floor2(
                    eye: false,
                    fire: false,
                  ),
                  width: _screenWidth / 2.8,
                  height: _screenH / 12,
                  icon: Icons.stairs,
                  buttonName: "Floor II")),
          Positioned(
              top: _screenH / 5 / adjust,
              left: _screenWidth / 20,
              child: fancyBut(
                  fontsize: 19,
                  pageTo: floor3(
                    eye: false,
                  ),
                  width: _screenWidth / 2.7,
                  height: _screenH / 12,
                  icon: Icons.stairs,
                  buttonName: "Floor III")),
          Positioned(
              top: _screenH / 1.4 / adjust,
              left: _screenWidth / 1.4,
              child: Container(
                constraints: BoxConstraints.expand(
                  width: _screenWidth / 4,
                  height: _screenH / 5.5 / adjust,
                ),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/layout/sci.PNG?raw=true"),
                        fit: BoxFit.cover)),
              )),
          floationPanel(
              button: [
                Icons.search,
                Icons.qr_code_scanner,
              ],
              animationTime: 550,
              buttonP: [EqupSearch(), scanQR])
        ],
      ),
    );
  }

  Future scanQR() async {
    await Permission.camera.request();
    String codeSanner = await scanner.scan(); //barcode scnner
    setState(() {
      goToPage(codeSanner);
    });
  }

  showNote() async {
    var android =
        AndroidNotificationDetails('C ID', "C Name", "channelDescription");
    var platform = NotificationDetails(android: android);
    await flutterLocalNotificationsPlugin.show(
        0, "Tip for the day", tip[random.nextInt(tip.length)], platform);
  }
}
