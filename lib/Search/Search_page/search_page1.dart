import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mma_mse/Search/equpment/equb_ava_main.dart';
import '../room/room_main.dart';
import 'package:mma_mse/Search/Test/Test_Page/test_main.dart';
import 'package:page_transition/page_transition.dart';
// import 'package:qrscan/qrscan.dart' as scanner;
import 'package:mma_mse/wholeQR.dart';
import 'package:mma_mse/fancyButton.dart';

class search_area extends StatefulWidget {
  search_area({Key key}) : super(key: key);

  @override
  _search_areaState createState() => _search_areaState();
}

class _search_areaState extends State<search_area> {
  @override
  void goToPage(qr_result) {
    Navigator.push(
        context,
        PageTransition(
            child: qr_pageTo[qr_result], type: PageTransitionType.bottomToTop));
  }

  double _screenWidth = 0;
  double _screenH = 0;
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
        title: DefaultTextStyle(
          style: const TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Bobbers',
          ),
          child: Text("a"),
        ),
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
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 5, color: Colors.grey.shade300),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/search/e.png?raw=true"),
                          fit: BoxFit.cover)),
                ),
              ),
            ),
            Positioned(
                top: _screenH / 8,
                left: _screenWidth / 45,
                child: fancyBut(
                    pageTo: equb_main(),
                    width: _screenWidth / 2,
                    height: _screenH / 8,
                    fontsize: 16,
                    icon: FontAwesomeIcons.microscope,
                    buttonName: "Equipment\nIn MSE")),
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
                      width: _screenWidth / 3 + 50, height: _screenH / 4 - 45),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 5, color: Colors.grey.shade300),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/search/T.jpg?raw=true"),
                          fit: BoxFit.cover)),
                ),
              ),
            ),
            Positioned(
                top: _screenH / 2.5,
                left: _screenWidth / 2 + 30,
                child: fancyBut(
                    pageTo: test_ava(),
                    width: _screenWidth / 2.5,
                    height: _screenH / 8,
                    fontsize: 16,
                    icon: FontAwesomeIcons.flask,
                    buttonName: "Case Study")),
            Positioned(
              top: _screenH / 1.65 + 10,
              left: _screenWidth / 2,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => room_main()));
                },
                child: Container(
                  constraints: BoxConstraints.expand(
                      width: _screenWidth / 3 + 50, height: _screenH / 4 - 45),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 5, color: Colors.grey.shade300),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/search/s.png?raw=true"),
                          fit: BoxFit.cover)),
                ),
              ),
            ),
            Positioned(
                top: _screenH / 1.5,
                left: 15,
                child: fancyBut(
                    pageTo: room_main(),
                    width: _screenWidth / 2.4,
                    height: _screenH / 8,
                    fontsize: 16,
                    icon: FontAwesomeIcons.book,
                    buttonName: "Room in MSE")),
          ],
        ),
      ),
    );
  }

  // scanQR() async {
  //   String? codeSanner = await scanner.scan(); //barcode scnner
  //   setState(() {
  //     goToPage(codeSanner);
  //   });
  // }
}
