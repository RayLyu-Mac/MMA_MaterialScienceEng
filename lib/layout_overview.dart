import 'package:flutter/material.dart';
import 'package:mma_mse/floors/floor1.dart';
import 'Search/Search_page/search_main.dart';
import 'floors/floor1.dart';
import 'package:page_transition/page_transition.dart';
import 'package:floatingpanel/floatingpanel.dart';
import 'package:mma_mse/QR_code/Scan.dart';
import 'package:mma_mse/Search/equpment/equpSearchMain.dart';

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
  List buttonP = [EqupSearch(), qrScanner()];

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
            Positioned(
              top: _screenH / 8.7,
              left: 3,
              child: Container(
                constraints: BoxConstraints.expand(
                    width: _screenWidth / 1.1, height: _screenH / 2.2),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assest/layout/layout.png"),
                        fit: BoxFit.cover)),
              ),
            ),
            Positioned(
                top: _screenH / 10,
                left: _screenWidth / 1.4,
                child: GestureDetector(
                  child: Container(
                    color: Colors.black.withOpacity(tra),
                    height: _height - 30,
                    width: _width,
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                          duration: const Duration(milliseconds: 500),
                          child: floor1(),
                          type: PageTransitionType.rightToLeftWithFade,
                        ));
                  },
                )),
            Positioned(
              top: _screenH / 3.7,
              left: _screenWidth / 1.4,
              child: GestureDetector(
                child: Container(
                  color: Colors.black.withOpacity(tra),
                  height: _height - 30,
                  width: _width,
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                        duration: const Duration(milliseconds: 500),
                        child: floor1(),
                        type: PageTransitionType.rightToLeftWithFade,
                      ));
                },
              ),
            ),
            Positioned(
              top: _screenH / 2.2,
              left: _screenWidth / 1.4,
              child: GestureDetector(
                child: Container(
                  color: Colors.black.withOpacity(tra),
                  height: _height - 30,
                  width: _width,
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                        duration: const Duration(milliseconds: 500),
                        child: floor1(),
                        type: PageTransitionType.rightToLeftWithFade,
                      ));
                },
              ),
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
            FloatBoxPanel(
                panelIcon: Icons.menu,
                dockType: DockType
                    .outside, // 'DockType.inside' or 'DockType.outside', weather to dock the panel outside or inside the edge of the screen
                dockOffset:
                    5.0, // Offset the dock from the edge depending on the 'dockType' property
                panelAnimDuration:
                    400, // Duration for panel open and close animation
                panelAnimCurve:
                    Curves.easeOut, // Curve for panel open and close animation
                dockAnimDuration:
                    400, // Auto dock to the edge of screen - animation duration
                dockAnimCurve: Curves.easeOut, // Auto dock animation curve
                panelOpenOffset:
                    20.0, // Offset from the edge of screen when panel is open
                buttons: [
                  Icons.search,
                  Icons.qr_code_scanner,
                ],
                onPressed: (numbers) {
                  print(buttonP.toString());
                  Navigator.push(
                      context,
                      PageTransition(
                          child: buttonP[numbers],
                          type: PageTransitionType.scale,
                          alignment: Alignment.topCenter));
                }),
          ],
        )));
  }
}
