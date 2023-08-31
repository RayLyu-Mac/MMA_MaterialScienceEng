import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mma_mse/Search/safty/saftyMain.dart';
import 'package:mma_mse/Search/tools/toolsMain.dart';
import 'package:mma_mse/Search/direction/dir_main.dart';
import 'package:mma_mse/fancyButton.dart';

class search_p2 extends StatefulWidget {
  search_p2({Key key}) : super(key: key);

  @override
  _search_p2State createState() => _search_p2State();
}

class _search_p2State extends State<search_p2> {
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
              top: _screenH / 20,
              left: _screenWidth / 1.8,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => direction_main()));
                },
                child: Container(
                  constraints: BoxConstraints.expand(
                      width: _screenWidth / 2.4, height: _screenH / 4.3),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 5, color: Colors.grey.shade300),
                      image: DecorationImage(
                          image: AssetImage("assest/search/dir.jpg"),
                          fit: BoxFit.cover)),
                ),
              ),
            ),
            Positioned(
                top: _screenH / 10,
                left: 20,
                child: fancyBut(
                  pageTo: direction_main(),
                  width: _screenWidth / 2.3,
                  height: _screenH / 8,
                  icon: FontAwesomeIcons.paperPlane,
                  buttonName: "Directions \nin MSE",
                  fontsize: 20,
                )),
            Positioned(
                top: _screenH / 2.5,
                left: _screenWidth / 2 + 30,
                child: fancyBut(
                  pageTo: toolMain(),
                  width: _screenWidth / 2.3,
                  height: _screenH / 8,
                  icon: FontAwesomeIcons.tools,
                  buttonName: "Tools",
                  fontsize: 20,
                )),
            Positioned(
              top: _screenH / 2.75,
              left: 20,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => toolMain()));
                },
                child: Container(
                  constraints: BoxConstraints.expand(
                      width: _screenWidth / 3 + 60, height: _screenH / 4 - 45),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 5, color: Colors.grey.shade300),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://github.com/RayLyu-Mac/MMA/blob/master/assest/tool.jpg?raw=true"),
                          fit: BoxFit.cover)),
                ),
              ),
            ),
            Positioned(
                top: _screenH / 1.5,
                left: _screenWidth / 45,
                child: fancyBut(
                  pageTo: toolMain(),
                  width: _screenWidth / 2.3,
                  height: _screenH / 8,
                  icon: FontAwesomeIcons.lifeRing,
                  buttonName: "Safety",
                  fontsize: 20,
                )),
            Positioned(
              top: _screenH / 1.6,
              left: _screenWidth / 2.2,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => saftyMain()));
                },
                child: Container(
                  constraints: BoxConstraints.expand(
                      width: _screenWidth / 2, height: _screenH / 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 5, color: Colors.grey.shade300),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/Safty/main.jpg?raw=truee"),
                          fit: BoxFit.cover)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
