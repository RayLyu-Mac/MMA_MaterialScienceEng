import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'roomBut.dart';
import 'package:mma_mse/floors/floor2/roomMain/239.dart';
import 'floor2/roomMain/240.dart';
import 'floor2/roomMain/239a.dart';
import 'floor2/roomMain/242.dart';
import 'floor2/roomMain/244.dart';
import 'floor2/roomMain/245.dart';
import 'floor2/roomMain/246.dart';
import 'floor2/roomMain/246A.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:barcode_scan_fix/barcode_scan.dart';
import 'package:page_transition/page_transition.dart';
import 'package:mma_mse/Search/equpment/equb_ava_data.dart';
import 'package:mma_mse/Search/SearchAll.dart';
import 'package:mma_mse/floationPanel/PanelMain.dart';
import 'package:mma_mse/Search/extramenu.dart';

class floor2 extends StatefulWidget {
  final bool safty;
  final bool eye;
  final bool fire;
  floor2(
      {@optionalTypeArgs this.eye,
      @optionalTypeArgs this.safty,
      @optionalTypeArgs this.fire,
      Key key})
      : super(key: key);

  @override
  _floor2State createState() => _floor2State();
}

class _floor2State extends State<floor2> {
  double _screenWidth;
  double _screenH;
  double adjust;
  double saftyI = -1;

  @override
  void goToPage(qr_result) {
    Navigator.push(
        context,
        PageTransition(
            child: to[qr_result], type: PageTransitionType.bottomToTop));
  }

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;

    if (_screenH / _screenWidth > 2) {
      _screenH = _screenH * 0.9;
      _screenWidth = _screenWidth * 0.93;
      adjust = 0.9;
    } else {
      adjust = 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    Drawer floor2D() => Drawer(
          child: ListView(
            children: [DrawerHeader(child: Text("JHE Floor II")), extraMenu()],
          ),
        );
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        actions: [
          IconButton(
              padding: EdgeInsets.fromLTRB(0, 3, 15, 3),
              iconSize: 32,
              onPressed: () {
                setState(() {
                  saftyI = saftyI * -1;
                });
              },
              icon: Icon(FontAwesomeIcons.exchangeAlt))
        ],
        title: Text(
          "JHE Floor II",
          style:
              TextStyle(fontSize: _screenH / 35, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
      ),
      drawer: floor2D(),
      body: Stack(
        children: [
          widget.eye || saftyI > 0
              ? roomButton(
                  left: _screenWidth / 10,
                  top: _screenH / 35,
                  length: _screenH / 15,
                  width: _screenWidth / 3,
                  backC: Colors.greenAccent[100].withOpacity(0.8),
                  detailTitle: "Exit",
                  details: "Emergency Exit for JHE Floor II",
                  icon: Icons.exit_to_app_rounded,
                )
              : roomButton(
                  left: _screenWidth / 10,
                  top: _screenH / 35,
                  length: _screenH / 15,
                  width: _screenWidth / 3,
                  name: "Stairs"),
          roomButton(
              left: _screenWidth / 10,
              top: _screenH / 9,
              length: _screenH / 6,
              width: _screenWidth / 3,
              name: "243"),
          roomButton(
              left: _screenWidth / 10,
              top: _screenH / 3.4,
              length: _screenH / 12,
              width: _screenWidth / 3,
              pageTo: room242Main(),
              name: "242"),
          roomButton(
              left: _screenWidth / 10,
              top: _screenH / 2.5,
              length: _screenH / 12,
              width: _screenWidth / 3,
              name: "241"),
          widget.eye || saftyI > 0
              ? Positioned(
                  left: _screenWidth / 15,
                  top: _screenH / 2,
                  child: Container(
                    width: _screenWidth / 2,
                    height: _screenH / 12,
                    child: Row(
                      children: [
                        roomButton(
                          length: _screenH / 12,
                          width: _screenWidth / 6,
                          backC: Colors.redAccent[100].withOpacity(0.8),
                          icon: Icons.remove_red_eye_rounded,
                          detailTitle: "Eye shower",
                          details: "Emergency eye shower when chemical spills",
                        ),
                        SizedBox(
                          width: _screenWidth / 20,
                        ),
                        roomButton(
                          detailTitle: "Chemical Shower",
                          details: "Emergency body shower when chemical spills",
                          length: _screenH / 12,
                          width: _screenWidth / 6,
                          backC: Colors.redAccent[100].withOpacity(0.8),
                          icon: Icons.shower_rounded,
                        )
                      ],
                    ),
                  ))
              : roomButton(
                  left: _screenWidth / 10,
                  top: _screenH / 2,
                  length: _screenH / 12,
                  width: _screenWidth / 3,
                  pageTo: room240(),
                  name: "240"),
          roomButton(
              left: _screenWidth / 10,
              top: _screenH / 1.66,
              length: _screenH / 7,
              width: _screenWidth / 3,
              pageTo: room239Main(),
              name: "239"),
          roomButton(
              left: _screenWidth / 10,
              top: _screenH / 1.3,
              length: _screenH / 12,
              width: _screenWidth / 3,
              name: "238"),
          roomButton(
              left: _screenWidth / 5.5,
              top: _screenH / 1.66,
              length: _screenH / 20,
              width: _screenWidth / 4,
              fontsize: 18,
              elevation: 4,
              pageTo: room239AMain(),
              name: "239A"),
          roomButton(
              left: _screenWidth / 1.6,
              top: _screenH / 35,
              length: _screenH / 10,
              width: _screenWidth / 3,
              pageTo: room244Main(),
              name: "244"),
          widget.fire || saftyI > 0
              ? roomButton(
                  left: _screenWidth / 1.94,
                  top: _screenH / 35,
                  length: _screenH / 20,
                  width: _screenWidth / 10,
                  icon: Icons.fire_extinguisher,
                  details: "Emergency for fire situation",
                  detailTitle: "Fire Extinguisher",
                )
              : Positioned(
                  left: _screenWidth / 1.94,
                  top: _screenH / 35,
                  child: Container()),
          widget.fire || saftyI > 0
              ? roomButton(
                  detailTitle: "Fire Extinguisher",
                  details: "Emergency for fire situation",
                  left: _screenWidth / 1.94,
                  top: _screenH / 6,
                  length: _screenH / 20,
                  width: _screenWidth / 10,
                  icon: Icons.fire_extinguisher,
                )
              : Positioned(
                  left: _screenWidth / 1.94,
                  top: _screenH / 35,
                  child: Container()),
          roomButton(
              left: _screenWidth / 1.6,
              top: _screenH / 7,
              length: _screenH / 9,
              width: _screenWidth / 3,
              pageTo: room245Main(),
              name: "245"),
          widget.eye || saftyI > 0
              ? Positioned(
                  left: _screenWidth / 1.7,
                  top: _screenH / 3.54,
                  child: Container(
                    width: _screenWidth / 2,
                    height: _screenH / 12,
                    child: Row(
                      children: [
                        roomButton(
                          length: _screenH / 12,
                          width: _screenWidth / 6,
                          backC: Colors.redAccent[100].withOpacity(0.8),
                          icon: Icons.remove_red_eye_rounded,
                          pageTo: room246AMain(),
                          detailTitle: "Room 246A: Eye shower",
                          details: "Emergency eye shower when chemical spills",
                        ),
                        SizedBox(
                          width: _screenWidth / 20,
                        ),
                        roomButton(
                          length: _screenH / 12,
                          width: _screenWidth / 6,
                          backC: Colors.redAccent[100].withOpacity(0.8),
                          icon: Icons.shower_rounded,
                          pageTo: room246AMain(),
                          detailTitle: "Room 246A: Chemical Shower",
                          details: "Emergency body shower when chemical spills",
                        )
                      ],
                    ),
                  ))
              : roomButton(
                  left: _screenWidth / 1.6,
                  top: _screenH / 3.73,
                  length: _screenH / 9,
                  width: _screenWidth / 3,
                  pageTo: room246Main(),
                  name: "246   246/A"),
          roomButton(
              left: _screenWidth / 1.6,
              top: _screenH / 2.54,
              length: _screenH / 9,
              width: _screenWidth / 3,
              pageTo: room246AMain(),
              name: "246B"),
          roomButton(
              left: _screenWidth / 1.6,
              top: _screenH / 1.92,
              length: _screenH / 9,
              width: _screenWidth / 3,
              name: "247"),
          saftyI > 0
              ? Positioned(
                  left: _screenWidth / 1.8,
                  top: _screenH / 1.55,
                  child: Container(
                      width: _screenWidth / 2.5,
                      height: _screenH / 4.5,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height: _screenWidth / 25,
                              ),
                              roomButton(
                                length: _screenH / 12,
                                width: _screenWidth / 6,
                                backC: Colors.redAccent[100].withOpacity(0.8),
                                icon: FontAwesomeIcons.firstAid,
                                detailTitle: "First Aid Kit",
                                details: "QRS kit for any emergency",
                              ),
                              SizedBox(
                                height: _screenWidth / 25,
                              ),
                              roomButton(
                                length: _screenH / 12,
                                width: _screenWidth / 6,
                                backC: Colors.redAccent[100].withOpacity(0.8),
                                icon: FontAwesomeIcons.burn,
                                detailTitle: "Burn Kit",
                                details: "QRS for burning situation",
                              )
                            ],
                          ),
                          SizedBox(
                            width: _screenWidth / 40,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: _screenH / 60,
                              ),
                              roomButton(
                                length: _screenH / 5,
                                width: _screenWidth / 5,
                                fontsize: 10,
                                backC: Colors.redAccent[100].withOpacity(0.8),
                                detailsFontS: 16,
                                detailsTiFontS: 25,
                                detailTitle: "Equipment Manager Contact Info",
                                details:
                                    "Ed McCaffery Ext:24985\nDoug Culley: Ext 24106\nXiaogang Li:Ext 21881",
                                name:
                                    "Contact Info:\nEd McCaffery: Ext:24985\nDoug Culley: Ext 24106\nXiaogang Li: Ext 21881",
                              )
                            ],
                          )
                        ],
                      )))
              : roomButton(
                  left: _screenWidth / 1.6,
                  top: _screenH / 1.55,
                  length: _screenH / 4.7,
                  width: _screenWidth / 3,
                  name: "248"),
          floationPanel(
              button: [
                Icons.search,
                Icons.qr_code_scanner,
              ],
              animationTime: 550,
              buttonP: [EqupSearch(), scanQR]),
        ],
      ),
    );
  }

  scanQR() async {
    String codeSanner = await BarcodeScanner.scan(); //barcode scnner
    setState(() {
      goToPage(codeSanner);
    });
  }
}
