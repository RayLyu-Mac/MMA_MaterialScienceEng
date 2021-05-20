import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

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

class tensile_test_bg extends StatefulWidget {
  tensile_test_bg({Key key}) : super(key: key);

  @override
  _tensile_test_bgState createState() => _tensile_test_bgState();
}

class _tensile_test_bgState extends State<tensile_test_bg> {
  double _screenWidth;
  double _screenH;
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
                      child: page1(),
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
                      child: page2(),
                      type: PageTransitionType.leftToRight));
            },
            title: Text('Hardness test types'),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      duration: const Duration(milliseconds: 500),
                      child: page3(),
                      type: PageTransitionType.leftToRight));
            },
            title: Text('Advantage of using instrument indentation'),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      duration: const Duration(milliseconds: 500),
                      child: page4(),
                      type: PageTransitionType.leftToRight));
            },
            title: Text('Force Displacement Curve'),
          )
        ]),
      );

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    return Scaffold(
      drawer: _htSideMenue(),
      body: PageView(
        controller: controller,
        scrollDirection: Axis.horizontal,
        children: <Widget>[page1(), page2(), page3(), page4()],
      ),
    );
  }
}

class page1 extends StatefulWidget {
  page1({Key key}) : super(key: key);

  @override
  _page1State createState() => _page1State();
}

class _page1State extends State<page1> {
  double _screenWidth;
  double _screenH;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            top: 0,
            left: 0,
            child: Container(
              child: Image(
                fit: BoxFit.cover,
                height: _screenH,
                width: _screenWidth,
                alignment: Alignment.center,
                image: AssetImage("assest/test/ttbg1.jpg"),
              ),
            )),
        Positioned(
          top: _screenH / 3,
          left: _screenWidth / 12,
          child: Container(
              constraints: BoxConstraints.expand(
                  width: _screenWidth / 1.2, height: _screenH / 2.4),
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(16.0),
                  border: Border.all(
                    width: 1.5,
                    color: Colors.white.withOpacity(0.2),
                  )),
              child: Column(children: [
                Text(
                  "Hardness:",
                  style: TextStyle(
                      fontSize: _screenH / 20,
                      color: Colors.black,
                      decoration: TextDecoration.none),
                ),
                Text(
                  document["1"],
                  style: TextStyle(
                      fontSize: _screenH / 50,
                      color: Colors.black,
                      decoration: TextDecoration.none),
                ),
              ])),
        )
      ],
    );
  }
}

class page2 extends StatefulWidget {
  page2({Key key}) : super(key: key);

  @override
  _page2State createState() => _page2State();
}

class _page2State extends State<page2> {
  double _screenWidth;
  double _screenH;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            top: _screenH / 100,
            left: _screenWidth / 100,
            child: Container(
              child: Image(
                fit: BoxFit.cover,
                height: _screenH / 1.01,
                width: _screenWidth / 1.01,
                alignment: Alignment.center,
                image: AssetImage("assest/test/ttbg1.jpg"),
              ),
            )),
        Positioned(
          top: _screenH / 3,
          left: _screenWidth / 12,
          child: Container(
              constraints: BoxConstraints.expand(
                  width: _screenWidth / 1.2, height: _screenH / 2.4),
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(16.0),
                  border: Border.all(
                    width: 1.5,
                    color: Colors.white.withOpacity(0.2),
                  )),
              child: Column(children: [
                Text(
                  "Hardness Testing:",
                  style: TextStyle(
                      fontSize: _screenH / 20,
                      color: Colors.black,
                      decoration: TextDecoration.none),
                ),
                Text(
                  document["2"],
                  style: TextStyle(
                      fontSize: _screenH / 50,
                      color: Colors.black,
                      decoration: TextDecoration.none),
                ),
              ])),
        )
      ],
    );
  }
}

class page3 extends StatefulWidget {
  page3({Key key}) : super(key: key);

  @override
  _page3State createState() => _page3State();
}

class _page3State extends State<page3> {
  double _screenWidth;
  double _screenH;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            top: 0,
            left: 0,
            child: Container(
              child: Image(
                fit: BoxFit.cover,
                height: _screenH,
                width: _screenWidth,
                alignment: Alignment.center,
                image: AssetImage("assest/test/ttbg1.jpg"),
              ),
            )),
        Positioned(
          top: _screenH / 3,
          left: _screenWidth / 12,
          child: Container(
              constraints: BoxConstraints.expand(
                  width: _screenWidth / 1.2, height: _screenH / 2.4),
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(16.0),
                  border: Border.all(
                    width: 1.5,
                    color: Colors.white.withOpacity(0.2),
                  )),
              child: Column(children: [
                Text(
                  "Advantage of using instrumented indentation testing:",
                  style: TextStyle(
                      fontSize: _screenH / 20,
                      color: Colors.black,
                      decoration: TextDecoration.none),
                ),
                Text(
                  document["3"],
                  style: TextStyle(
                      fontSize: _screenH / 50,
                      color: Colors.black,
                      decoration: TextDecoration.none),
                ),
              ])),
        )
      ],
    );
  }
}

class page4 extends StatefulWidget {
  page4({Key key}) : super(key: key);

  @override
  _page4State createState() => _page4State();
}

class _page4State extends State<page4> {
  double _screenWidth;
  double _screenH;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            top: 0,
            left: 0,
            child: Container(
              child: Image(
                fit: BoxFit.cover,
                height: _screenH,
                width: _screenWidth,
                alignment: Alignment.center,
                image: AssetImage("assest/test/ttbg1.jpg"),
              ),
            )),
        Positioned(
          top: _screenH / 6,
          left: _screenWidth / 12,
          child: Container(
              constraints: BoxConstraints.expand(
                  width: _screenWidth / 1.2, height: _screenH / 1.5),
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(16.0),
                  border: Border.all(
                    width: 1.5,
                    color: Colors.white.withOpacity(0.2),
                  )),
              child: Column(children: [
                Text(
                  "Force-Displacement Curve:",
                  style: TextStyle(
                      fontSize: _screenH / 20,
                      color: Colors.black,
                      decoration: TextDecoration.none),
                ),
                Text(
                  document["4"],
                  style: TextStyle(
                      fontSize: _screenH / 50,
                      color: Colors.black,
                      decoration: TextDecoration.none),
                ),
                Container(
                  constraints: BoxConstraints.expand(
                      width: _screenWidth / 1.3, height: _screenH / 3),
                  child: Image(
                    image: AssetImage("assest/equipment/theory/fdc.png"),
                  ),
                )
              ])),
        )
      ],
    );
  }
}
