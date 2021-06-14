import 'package:flutter/material.dart';
import 'package:mma_mse/floationPanel/PanelMain.dart';
import 'package:mma_mse/floors/floor1.dart';
import 'Search/Search_page/search_main.dart';
import 'floors/floor1.dart';
import 'package:page_transition/page_transition.dart';
import 'package:mma_mse/Search/SearchAll.dart';
import 'package:barcode_scan_fix/barcode_scan.dart';
import 'package:mma_mse/Search/equpment/equb_ava_data.dart';
import 'Search/extramenu.dart';
import 'floors/floor2.dart';
import 'floors/floor3.dart';

class customListTile extends StatelessWidget {
  const customListTile(
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

class layout_overview extends StatefulWidget {
  layout_overview({Key key}) : super(key: key);

  @override
  _layout_overviewState createState() => _layout_overviewState();
}

class _layout_overviewState extends State<layout_overview> {
  double _height = 100;
  double _width = 90;
  double _screenWidth;
  double _screenH;
  double tra = 0.001;
  List<Widget> floors = [
    floor1(
      fire: false,
    ),
    floor1(
      fire: false,
    ),
    floor2(
      safty: false,
      eye: false,
      fire: false,
    ),
    floor3(
      eye: false,
    )
  ];
  List<Color> floorC = [
    Colors.orangeAccent,
    Colors.lightGreenAccent,
    Colors.lightBlueAccent
  ];
  List<double> floorD = [
    6.5,
    3,
    1.95,
  ];
  List<double> buttonD = [
    0,
    12,
    3.8,
    2.25,
  ];

  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    Drawer _layoutsidemenu() => Drawer(
            child: ListView(children: <Widget>[
          DrawerHeader(
              child: Text(
            'JHE Material Department',
            style: TextStyle(fontSize: _screenH / 30),
          )),
          ExpansionTile(title: Text("floor 1"), children: [
            ExpansionTile(
              title: Text("Mechanical Lab"),
              children: [
                customListTile(
                  name: "UTM Machine",
                  pageTo: floor1(),
                  fonts: _screenH / 45,
                ),
              ],
            )
          ]),
          ExpansionTile(title: Text("floor 2"), children: [
            ExpansionTile(
              title: Text("Mechanical Lab"),
              children: [
                customListTile(
                  name: "UTM Machine",
                  pageTo: floor1(),
                  fonts: _screenH / 45,
                ),
              ],
            )
          ]),
          extraMenu()
        ]));
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => search_main(),
                    ));
              },
              icon: Icon(
                Icons.search,
                color: Colors.white,
                size: 34,
              ),
            )
          ],
          backgroundColor: Colors.black,
          title: Text("Layout Overview",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: _screenH / 37,
                  fontWeight: FontWeight.w700)),
        ),
        drawer: Theme(
          data: ThemeData(
            canvasColor: Colors.white.withOpacity(0.8),
          ),
          child: Container(width: 220, child: _layoutsidemenu()),
        ),
        body: SafeArea(
            child: Stack(
          children: [
            Positioned(
                top: _screenH / 45,
                left: _screenWidth / 40,
                child: Text(
                  "JHE Right Wing",
                  style: TextStyle(
                      fontSize: _screenH / 40, fontWeight: FontWeight.bold),
                )),
            for (var jj = 0; jj < 3; jj++)
              Positioned(
                  top: _screenH / floorD[jj],
                  left: jj == 1 ? _screenWidth / 2.5 : _screenWidth / 20,
                  child: Container(
                    height: _screenH / 20,
                    width: _screenWidth / 1.7,
                    color: floorC[jj],
                  )),
            for (var ii = 1; ii < 4; ii++)
              Positioned(
                top: _screenH / (buttonD[ii]),
                left: ii == 2 ? _screenWidth / 2.2 : _screenWidth / 10,
                child: RaisedButton.icon(
                    onPressed: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              child: floors[ii],
                              type: PageTransitionType.scale,
                              alignment: Alignment.topCenter));
                    },
                    icon: Icon(Icons.home_filled),
                    label: Text("Floor $ii")),
              ),
            Positioned(
                top: _screenH / 1.65,
                left: _screenWidth / 1.6,
                child: Container(
                  constraints: BoxConstraints.expand(
                    width: _screenWidth / 3,
                    height: _screenH / 4,
                  ),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assest/layout/sci.png"),
                          fit: BoxFit.cover)),
                )),
            floationPanel(button: [
              Icons.search,
              Icons.qr_code_scanner,
            ], buttonP: [
              EqupSearch(),
              scanQR
            ])
          ],
        )));
  }

  void goToPage(qr_result) {
    Navigator.push(
        context,
        PageTransition(
            child: to[qr_result], type: PageTransitionType.bottomToTop));
  }

  scanQR() async {
    String codeSanner = await BarcodeScanner.scan(); //barcode scnner
    setState(() {
      goToPage(codeSanner);
    });
  }
}
