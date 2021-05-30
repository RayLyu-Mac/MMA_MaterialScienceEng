import 'package:flutter/material.dart';
import 'package:mma_mse/Search/equpment/equb_ava_main.dart';
import 'package:mma_mse/equipment/Hardness/ManualRW/Rockwell.dart';
import '../room/room_main.dart';
import 'package:mma_mse/Search/Test/TestsDetailes/hardnessTest/hardness_t_back.dart';
import 'package:mma_mse/Search/Test/Test_Page/test_main.dart';
import 'package:mma_mse/Search/equpment/equpSearchMain.dart';
import 'package:page_transition/page_transition.dart';
import 'package:floatingpanel/floatingpanel.dart';
import 'package:mma_mse/QR_code/Scan.dart';

class search_area extends StatefulWidget {
  search_area({Key key}) : super(key: key);

  @override
  _search_areaState createState() => _search_areaState();
}

class _search_areaState extends State<search_area> {
  double _screenWidth;
  double _screenH;
  List buttonP = [EqupSearch(), qrScanner()];
  final PageController controller = PageController(initialPage: 0);

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Do you want to search for...",
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w700)),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: _screenWidth / 10,
              left: 220,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => equb_main()));
                },
                child: Container(
                  constraints: BoxConstraints.expand(
                      width: _screenWidth / 3 - 10, height: _screenH / 4 - 5),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/search/e.png?raw=true"),
                          fit: BoxFit.cover)),
                ),
              ),
            ),
            Positioned(
              top: _screenWidth / 10 + 80,
              left: 20,
              child: Text(
                "Available Equipment \nIn MSE Department",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              top: _screenH / 2.75,
              left: 20,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => test_ava()));
                },
                child: Container(
                  constraints: BoxConstraints.expand(
                      width: _screenWidth / 3 + 60, height: _screenH / 4 - 45),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/search/T.jpg?raw=true"),
                          fit: BoxFit.cover)),
                ),
              ),
            ),
            Positioned(
              top: _screenH / 2.75 + 50,
              left: _screenWidth / 2 + 30,
              child: Text(
                "Available Test \nIn MSE Department",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              top: _screenH / 1.65 + 10,
              left: _screenWidth / 2.1,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => room_main()));
                },
                child: Container(
                  constraints: BoxConstraints.expand(
                      width: _screenWidth / 3 + 60, height: _screenH / 4 - 45),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/search/s.png?raw=true"),
                          fit: BoxFit.cover)),
                ),
              ),
            ),
            Positioned(
              top: _screenH / 1.65 + 70,
              left: 15,
              child: Text(
                "Available Room \nIn MSE Department",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
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
                  Navigator.push(
                      context,
                      PageTransition(
                          child: buttonP[numbers],
                          type: PageTransitionType.scale,
                          alignment: Alignment.topCenter));
                }),
          ],
        ),
      ),
    );
  }

  buttonFunction(int nu) {
    switch (nu) {
      case 1:
        return Navigator.push(
            context,
            PageTransition(
                child: EqupSearch(),
                type: PageTransitionType.scale,
                alignment: Alignment.topCenter));
    }
  }
}
