import 'package:flutter/material.dart';
import 'package:mma_mse/Search/buttonMode.dart';
import 'package:mma_mse/Search/tools/toolsMain.dart';
import 'package:mma_mse/Search/direction/dir_main.dart';

class search_p2 extends StatefulWidget {
  search_p2({Key key}) : super(key: key);

  @override
  _search_p2State createState() => _search_p2State();
}

class _search_p2State extends State<search_p2> {
  double _screenWidth;
  double _screenH;
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
                      image: DecorationImage(
                          image: AssetImage("assest/search/dir.jpg"),
                          fit: BoxFit.cover)),
                ),
              ),
            ),
            Positioned(
              top: _screenWidth / 10 + 80,
              left: 20,
              child: Text(
                "Career Direction \nIn MSE Department",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              top: _screenH / 2.75 + 50,
              left: _screenWidth / 2 + 30,
              child: Text(
                "Useful Tools",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            IntroButtonMode(
              pageTo: toolMain(),
              length: _screenH / 4.3,
              width: _screenWidth / 2.4,
              backImg:
                  "https://github.com/RayLyu-Mac/MMA/blob/master/assest/tool.jpg?raw=true",
              top: _screenH / 2.75,
              left: 20,
              shadowColor: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
