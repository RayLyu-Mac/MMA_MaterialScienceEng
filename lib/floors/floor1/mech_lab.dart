import 'package:flutter/material.dart';
import 'package:mma_mse/Search/Search_page/search_main.dart';
import '../../equipment/UTM/universal_tensile_machine_MainPage.dart';
import '../../equipment/CharpyImpact/Charpy.dart';
import 'package:page_transition/page_transition.dart';
import 'package:mma_mse/equipment/LlyoldTensile/LlyoldMain.dart';
import 'package:mma_mse/equipment/Hardness/digitalRW/digitalRWMain.dart';

class mech_lab extends StatefulWidget {
  mech_lab({Key key}) : super(key: key);

  @override
  _mech_labState createState() => _mech_labState();
}

class _mech_labState extends State<mech_lab> {
  double _screenWidth;
  double _screenH;
  double tra = 0.2;
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
        title: Text("Mechnical Lab",
            style: TextStyle(
                color: Colors.white,
                fontSize: _screenH / 37,
                fontWeight: FontWeight.w700)),
      ),
      body: SafeArea(
          child: Stack(
        children: [
          Positioned(
              top: _screenH / 45,
              left: _screenWidth / 20,
              child: Text(
                "Layout of Mechanical Lab",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: _screenH / 40,
                    fontWeight: FontWeight.bold),
              )),
          Positioned(
            top: _screenH / 12,
            left: _screenWidth / 16,
            child: Container(
              constraints: BoxConstraints.expand(
                  width: _screenWidth / 1.2, height: _screenH / 2.7),
              decoration: BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                      image: AssetImage("assest/floors/floor1/Mech.png"),
                      fit: BoxFit.cover)),
            ),
          ),
          Positioned(
            top: _screenH / 9,
            left: _screenWidth / 3.3,
            child: GestureDetector(
              child: Container(
                constraints: BoxConstraints.expand(
                    width: _screenWidth / 3.2, height: _screenH / 18),
                color: Colors.black.withOpacity(tra),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        duration: const Duration(milliseconds: 500),
                        child: tensile_test(),
                        type: PageTransitionType.rightToLeftJoined,
                        childCurrent: mech_lab()));
              },
            ),
          ),
          Positioned(
            top: _screenH / 7,
            left: _screenWidth / 1.4,
            child: GestureDetector(
              child: Container(
                constraints: BoxConstraints.expand(
                    width: _screenWidth / 6.2, height: _screenH / 5.5),
                color: Colors.black.withOpacity(tra),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        child: DigitalRWMain(),
                        type: PageTransitionType.bottomToTop));
              },
            ),
          ),
          Positioned(
            top: _screenH / 4.5,
            left: _screenWidth / 7.5,
            child: GestureDetector(
              child: Container(
                constraints: BoxConstraints.expand(
                    width: _screenWidth / 6.2, height: _screenH / 7),
                color: Colors.black.withOpacity(tra),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        child: charpy_test(),
                        type: PageTransitionType.leftToRightWithFade));
              },
            ),
          ),
          Positioned(
            top: _screenH / 1.7,
            left: _screenWidth / 2 + 16,
            child: GestureDetector(
              child: Container(
                width: _screenWidth / 2.9,
                height: _screenH / 16,
                padding: EdgeInsets.all(7),
                child: Text(
                  "Manager",
                  style: TextStyle(
                      fontSize: _screenH / 50, fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.black, width: 4)),
              ),
            ),
          ),
          Positioned(
            top: _screenH / 1.7,
            left: _screenWidth / 12,
            child: GestureDetector(
              child: Container(
                constraints: BoxConstraints.expand(
                  width: _screenWidth / 2.9,
                  height: _screenH / 16,
                ),
                padding: EdgeInsets.all(7),
                child: Text(
                  "User Instruction",
                  style: TextStyle(
                      fontSize: _screenH / 50, fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.black, width: 4)),
              ),
            ),
          ),
          Positioned(
            top: _screenH / 2,
            left: _screenWidth / 12,
            child: GestureDetector(
              child: Container(
                width: _screenWidth / 2.9,
                height: _screenH / 16,
                padding: EdgeInsets.all(7),
                child: Text(
                  "Schedulling",
                  style: TextStyle(
                      fontSize: _screenH / 50, fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.black, width: 4)),
              ),
            ),
          ),
          Positioned(
            top: _screenH / 2,
            left: _screenWidth / 2 + 16,
            child: GestureDetector(
              child: Container(
                width: _screenWidth / 2.9,
                height: _screenH / 16,
                padding: EdgeInsets.all(7),
                child: Text(
                  "Manager",
                  style: TextStyle(
                      fontSize: _screenH / 50, fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.black, width: 4)),
              ),
            ),
          ),
          Positioned(
              top: _screenH / 1.35,
              left: _screenWidth / 2 + 20,
              child: Container(
                  constraints: BoxConstraints.expand(
                      width: _screenWidth / 4 + 60, height: _screenH / 8 + 5),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(
                          image: AssetImage("assest/floors/floor1/g.png"),
                          fit: BoxFit.cover)))),
          Positioned(
              top: _screenH / 1.37,
              left: _screenWidth / 30,
              child: Container(
                  constraints: BoxConstraints.expand(
                      width: _screenWidth / 4 + 90, height: _screenH / 8 + 5),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(
                          image: AssetImage("assest/floors/floor1/w.jpg"),
                          fit: BoxFit.cover)))),
        ],
      )),
    );
  }
}
