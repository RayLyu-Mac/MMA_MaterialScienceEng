import 'package:flutter/material.dart';
import 'package:mma_mse/Search/safty/saftyMain.dart';
import 'floor1/mech_lab.dart';
import 'package:page_transition/page_transition.dart';
import 'package:mma_mse/Search/equpment/equb_ava_data.dart';
import 'package:barcode_scan_fix/barcode_scan.dart';
import '../equipment/saftyNoteText.dart';
import 'package:mma_mse/floationPanel/PanelMain.dart';
import 'package:mma_mse/Search/SearchAll.dart';
import 'package:mma_mse/Search/extramenu.dart';
import 'package:mma_mse/floors/roomBut.dart';
import 'floor1/room129.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class floor1 extends StatefulWidget {
  final bool fire;
  final bool eye;
  final bool visitFromOhter;
  floor1(
      {@optionalTypeArgs this.fire,
      @optionalTypeArgs this.eye,
      @optionalTypeArgs this.visitFromOhter,
      Key key})
      : super(key: key);

  @override
  _floor1State createState() => _floor1State();
}

class _floor1State extends State<floor1> {
  @override
  void initState() {
    createList();
    super.initState();
  }

  String qr_result = "";
  double _screenWidth;
  double _screenH;
  double tra = 0.002;
  double adjust;
  int nu;
  double saftyI = -1;
  double rwidth = 4.3;

  @override
  void goToPage(qr_result) {
    Navigator.push(
        context,
        PageTransition(
            child: to[qr_result], type: PageTransitionType.bottomToTop));
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
    if (_screenH / _screenWidth > 2) {
      _screenH = _screenH * 0.83;
      adjust = 0.83;
    } else {
      adjust = 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          backgroundColor: Colors.black,
          title: Text("Floor I",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w700)),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                  child: Column(
                children: [
                  Text(
                    "JHE Floor I",
                    style: TextStyle(
                        fontSize: _screenH / 30, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    constraints: BoxConstraints.expand(
                        width: _screenWidth / 1.5, height: _screenWidth / 4),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assest/logocolor.png"))),
                  )
                ],
              )),
              floorMenu(),
              extraMenu()
            ],
          ),
        ),
        body: Stack(
          children: [
            roomButton(
                top: _screenH / 40,
                left: _screenWidth / 30,
                length: _screenWidth / 8,
                width: _screenH / rwidth,
                name: "Stair"),
            roomButton(
                top: _screenH / 8.2,
                left: _screenWidth / 30,
                length: _screenWidth / 3,
                width: _screenH / rwidth,
                name: "130"),
            widget.eye || saftyI > 0
                ? Positioned(
                    top: _screenH / 2.75,
                    left: _screenWidth / 30,
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
                            detailTitle: "Room 129: Eye shower",
                            pageTo: room129(),
                            details:
                                "Emergency eye shower when chemical spills",
                          ),
                          SizedBox(
                            width: _screenWidth / 20,
                          ),
                          roomButton(
                            detailTitle: "Room 129: Chemical Shower",
                            details:
                                "Emergency body shower when chemical spills",
                            length: _screenH / 12,
                            pageTo: room129(),
                            width: _screenWidth / 6,
                            backC: Colors.redAccent[100].withOpacity(0.8),
                            icon: Icons.shower_rounded,
                          )
                        ],
                      ),
                    ))
                : roomButton(
                    top: _screenH / 2.85,
                    left: _screenWidth / 30,
                    length: _screenWidth / 5,
                    width: _screenH / rwidth,
                    pageTo: warning(
                      pageTo: room129(),
                      warning_note:
                          "1. Safety Glasses\n2. Long Pants\n3. Closed Toe Shoes\n4. No Contact Lens",
                    ),
                    name: "129"),
            roomButton(
                top: _screenH / 2,
                left: _screenWidth / 30,
                length: _screenWidth / 3.5,
                width: _screenH / rwidth,
                name: "128"),
            widget.fire || saftyI > 0
                ? roomButton(
                    detailTitle: "Fire Extinguisher",
                    details: "Emergency for fire situation",
                    left: _screenWidth / 2.3,
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
                top: _screenH / 1.43,
                left: _screenWidth / 30,
                length: _screenWidth / 5,
                width: _screenH / rwidth,
                name: "127"),
            roomButton(
                top: _screenH / 40,
                left: _screenWidth / 1.8,
                length: _screenWidth / 7,
                width: _screenH / rwidth,
                name: "131"),
            roomButton(
                top: _screenH / 8.2,
                left: _screenWidth / 1.8,
                length: _screenWidth / 7,
                width: _screenH / rwidth,
                name: "132"),
            roomButton(
                top: _screenH / 4.4,
                left: _screenWidth / 1.8,
                length: _screenWidth / 6,
                width: _screenH / rwidth,
                name: "133"),
            roomButton(
                top: _screenH / 2.88,
                left: _screenWidth / 1.8,
                length: _screenWidth / 3,
                width: _screenH / rwidth,
                pageTo: warning(
                  pageTo: mech_lab(),
                  warning_note:
                      "1. Safety Glasses\n2. Long Pants\n3. Closed Toe Shoes\n4. No Contact Lens",
                ),
                name: "134"),
            roomButton(
                top: _screenH / 1.74,
                left: _screenWidth / 1.8,
                length: _screenWidth / 5,
                width: _screenH / rwidth,
                name: "135"),
            roomButton(
                top: _screenH / 1.38,
                left: _screenWidth / 1.8,
                length: _screenWidth / 6,
                width: _screenH / rwidth,
                name: "135A"),
            Positioned(
                top: _screenH / 1.23,
                left: _screenWidth / 1.4,
                child: widget.visitFromOhter != null
                    ? Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey[200],
                            border:
                                Border.all(width: 5, color: Colors.blueGrey)),
                        height: _screenH / 15,
                        width: _screenWidth / 4,
                        child: Text("Swipe to see Floor II"),
                      )
                    : Container()),
            floationPanel(
                button: [
                  Icons.search,
                  Icons.qr_code_scanner,
                ],
                animationTime: 550,
                buttonP: [EqupSearch(), scanQR])
          ],
        ));
  }

  scanQR() async {
    String codeSanner = await BarcodeScanner.scan(); //barcode scnner
    setState(() {
      goToPage(codeSanner);
    });
  }
}

class floor1customListTile extends StatelessWidget {
  const floor1customListTile(
      {@required this.name, @required this.pageTo, @required this.fonts, key})
      : super(key: key);
  final String name;
  final Widget pageTo;
  final double fonts;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(8, 2, 8, 2),
      child: Container(
          decoration: BoxDecoration(
              border: Border(top: BorderSide(color: Colors.grey[100]))),
          child: InkWell(
            splashColor: Colors.blue[100],
            onTap: () => {
              Navigator.push(
                  context,
                  PageTransition(
                      duration: const Duration(milliseconds: 500),
                      child: pageTo,
                      type: PageTransitionType.leftToRight))
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: fonts),
                      ),
                    )
                  ],
                ),
                Icon(Icons.arrow_right)
              ],
            ),
          )),
    );
  }
}
