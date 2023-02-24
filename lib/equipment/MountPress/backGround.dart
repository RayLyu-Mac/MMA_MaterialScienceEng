import 'package:flutter/material.dart';
import 'package:mma_mse/customTile.dart';

class mountPressBackG extends StatefulWidget {
  mountPressBackG({Key? key}) : super(key: key);

  @override
  _mountPressBackGState createState() => _mountPressBackGState();
}

class _mountPressBackGState extends State<mountPressBackG> {
  String backImg =
      "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/bg.jpg?raw=true";
  final PageController controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      children: [page1(), pg2()],
    );
  }
}

class page1 extends StatefulWidget {
  page1({Key? key}) : super(key: key);

  @override
  _page1State createState() => _page1State();
}

class _page1State extends State<page1> {
  double _screenWidth = 0;
  double _screenH = 0;

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
        title:
            Text("Different Sample Clip Used to hold a think sample vertical"),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: _screenWidth / 15,
              left: _screenWidth / 1.85,
              child: Container(
                constraints: BoxConstraints.expand(
                    width: _screenWidth / 2.3, height: _screenH / 4),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/theory/MountP/clip1.jpg?raw=true"),
                        fit: BoxFit.cover)),
              ),
            ),
            Positioned(
              top: _screenWidth / 10 + 80,
              left: 20,
              child: Text(
                "UNICLIP Plastic Black",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              top: _screenH / 3.05,
              left: 20,
              child: Container(
                constraints: BoxConstraints.expand(
                    width: _screenWidth / 2.3, height: _screenH / 4),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/theory/MountP/clip2.jpg?raw=true"),
                        fit: BoxFit.cover)),
              ),
            ),
            Positioned(
              top: _screenH / 2.75 + 50,
              left: _screenWidth / 1.95,
              child: Text(
                "METCLIP Plastic White",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              top: _screenH / 1.65,
              left: _screenWidth / 2,
              child: Container(
                constraints: BoxConstraints.expand(
                    width: _screenWidth / 2.3, height: _screenH / 4),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/theory/MountP/clip3.jpg?raw=true"),
                        fit: BoxFit.cover)),
              ),
            ),
            Positioned(
              top: _screenH / 1.65 + 70,
              left: 15,
              child: Text(
                "METCLIP Metal\n(Stainless)",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class pg2 extends StatefulWidget {
  pg2({Key? key}) : super(key: key);

  @override
  _pg2State createState() => _pg2State();
}

class _pg2State extends State<pg2> {
  double _screenWidth = 0;
  double _screenH = 0;

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
          title: Text("The material needed for mounten Press"),
        ),
        body: SafeArea(
            child: Stack(children: [
          Positioned(
            top: _screenWidth / 10,
            left: 220,
            child: Container(
              constraints: BoxConstraints.expand(
                  width: _screenWidth / 2.3, height: _screenH / 4),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/theory/MountP/funnel.jpg?raw=true"),
                      fit: BoxFit.cover)),
            ),
          ),
          Positioned(
            top: _screenWidth / 10 + 80,
            left: 20,
            child: Text(
              "Funnel Used",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            top: _screenH / 2.75,
            left: 20,
            child: Container(
              constraints: BoxConstraints.expand(
                  width: _screenWidth / 2.3, height: _screenH / 4),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://github.com/RayLyu-Mac/MMA_MaterialScienceEng/blob/main/assest/equipment/theory/MountP/resin.jpg?raw=true"),
                      fit: BoxFit.cover)),
            ),
          ),
          Positioned(
            top: _screenH / 2.1,
            left: _screenWidth / 2 + 30,
            child: Text(
              "Thermo Resion used",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ])));
  }
}
