import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'dart:core';
import '../testDetailMode.dart';

Map<String, String> document = {
  "1":
      "Hardness is defined as the resistance of metal to plastic deformation, ususally by indentation",
  "2":
      "Mainly divided into micro and macro \nMicro: \nVickers: 10grams up to 1kg \nKnoop: 10grams up to 1kg \n \nMacro: \nVickers: 1kg - 150kg\nRockwell: Superficial(15N,30N,45N or A,B,C Scale)\nBrinell: 3000kg",
  "3":
      "•Can be applied to thick to thin coatings and on bulk from hard to sofr material\n•By using series of formula, hardness and ealstic modulus are calculated in a fast measurement",
  "4":
      "•Applied force and indentation depth are measured dynamically during a load-unload cycle\n•Hardness and ealstic modulus are calculated directly from the resultant force-displacement curve",
  "5":
      "On a surface covered by thin layers/coatings, the maximum depth of the indentation must be lower than 10% of total depth of the voering to avoid influence of the substrate"
};

class hardness_test_bg extends StatefulWidget {
  hardness_test_bg({Key key}) : super(key: key);

  @override
  _hardness_test_bgState createState() => _hardness_test_bgState();
}

class _hardness_test_bgState extends State<hardness_test_bg> {
  double _screenWidth;
  double _screenH;
  List<Widget> pages = [
    pageMode(
        doucment: document,
        docNumber: "1",
        back_img: "assest/test/hdtbg1.jpg",
        title: "Definition of Hardness"),
    pageMode(
      doucment: document,
      docNumber: "2",
      back_img: "assest/test/hdtbg1.jpg",
      title: "Instrumented Hardness Test",
      addOnImg: "assest/search/direction/emaf.jpg",
    )
  ];
  // (page1(),page2(),page3(),page4()) //
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  Drawer _htSideMenue() => Drawer(
        child: ListView(children: <Widget>[
          DrawerHeader(child: Text('Hardness Test')),
          ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      duration: const Duration(milliseconds: 500),
                      child: pages[0],
                      type: PageTransitionType.leftToRight));
            },
            title: Text('Definition of hardness'),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      duration: const Duration(milliseconds: 500),
                      child: pages[1],
                      type: PageTransitionType.leftToRight));
            },
            title: Text('Hardness test types'),
          ),
        ]),
      );

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    return Scaffold(
      drawer: Theme(
        data: ThemeData(
          canvasColor: Colors.white.withOpacity(0.6),
        ),
        child: Container(width: 220, child: _htSideMenue()),
      ),
      body: PageView(
        controller: controller,
        scrollDirection: Axis.horizontal,
        children: pages,
      ),
    );
  }
}
