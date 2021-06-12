import 'package:flutter/material.dart';
import 'floor1/mech_lab.dart';
import '../Search/Search_page/search_main.dart';
import 'package:page_transition/page_transition.dart';
import 'package:mma_mse/Search/equpment/equb_ava_data.dart';
import 'package:barcode_scan_fix/barcode_scan.dart';
import '../equipment/saftyNoteText.dart';
import 'package:mma_mse/floationPanel/PanelMain.dart';
import 'package:mma_mse/Search/SearchAll.dart';
import 'package:mma_mse/Search/extramenu.dart';
import 'package:mma_mse/floors/roomBut.dart';

class floor1 extends StatefulWidget {
  floor1({Key key}) : super(key: key);

  @override
  _floor1State createState() => _floor1State();
}

class _floor1State extends State<floor1> {
  String qr_result = "";
  double _screenWidth;
  double _screenH;
  double tra = 0.002;
  double adjust;
  int nu;

  @override
  void initState() {
    super.initState();
    createList();
  }

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
    Drawer _floor1sidemenu() => Drawer(
          child: ListView(children: <Widget>[
            DrawerHeader(
                child: Text(
              'JHE 1st Floor',
              style: TextStyle(fontSize: _screenH / 30),
            )),
            ExpansionTile(title: Text("Mechanical Lab"), children: [
              floor1customListTile(
                name: "UTM Machine",
                pageTo: mech_lab(),
                fonts: _screenH / 45,
              ),
              floor1customListTile(
                name: "Rockwell",
                pageTo: mech_lab(),
                fonts: _screenH / 45,
              ),
            ]),
            ExpansionTile(title: Text("Thermo Lab"), children: [
              floor1customListTile(
                name: "UTM Machine",
                pageTo: mech_lab(),
                fonts: _screenH / 45,
              ),
              floor1customListTile(
                name: "Rockwell",
                pageTo: mech_lab(),
                fonts: _screenH / 45,
              ),
            ]),
            extraMenu()
          ]),
        );
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    PageTransition(
                        child: search_main(),
                        type: PageTransitionType.scale,
                        alignment: Alignment.topCenter));
              },
              icon: Icon(
                Icons.search,
                color: Colors.white,
                size: 34,
              ),
            ),
          ],
          backgroundColor: Colors.black,
          title: Text("Floor I",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w700)),
        ),
        drawer: Theme(
          data: ThemeData(
            canvasColor: Colors.white.withOpacity(0.8),
          ),
          child: Container(width: 220, child: _floor1sidemenu()),
        ),
        body: Stack(
          children: [
            roomButton(
                top: _screenH / 40,
                left: _screenWidth / 30,
                length: _screenWidth / 8,
                width: _screenH / 4,
                name: "Stair"),
            roomButton(
                top: _screenH / 8.2,
                left: _screenWidth / 30,
                length: _screenWidth / 3,
                width: _screenH / 4,
                name: "130"),
            roomButton(
                top: _screenH / 2.85,
                left: _screenWidth / 30,
                length: _screenWidth / 5,
                width: _screenH / 4,
                name: "129"),
            roomButton(
                top: _screenH / 2,
                left: _screenWidth / 30,
                length: _screenWidth / 3.5,
                width: _screenH / 4,
                name: "128"),
            roomButton(
                top: _screenH / 1.43,
                left: _screenWidth / 30,
                length: _screenWidth / 5,
                width: _screenH / 4,
                name: "127"),
            roomButton(
                top: _screenH / 40,
                left: _screenWidth / 1.8,
                length: _screenWidth / 7,
                width: _screenH / 4,
                name: "131"),
            roomButton(
                top: _screenH / 8.2,
                left: _screenWidth / 1.8,
                length: _screenWidth / 7,
                width: _screenH / 4,
                name: "132"),
            roomButton(
                top: _screenH / 4.4,
                left: _screenWidth / 1.8,
                length: _screenWidth / 6,
                width: _screenH / 4,
                name: "133"),
            roomButton(
                top: _screenH / 2.88,
                left: _screenWidth / 1.8,
                length: _screenWidth / 3,
                width: _screenH / 4,
                name: "134"),
            roomButton(
                top: _screenH / 1.74,
                left: _screenWidth / 1.8,
                length: _screenWidth / 5,
                width: _screenH / 4,
                name: "135"),
            roomButton(
                top: _screenH / 1.38,
                left: _screenWidth / 1.8,
                length: _screenWidth / 6,
                width: _screenH / 4,
                name: "135A"),
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
