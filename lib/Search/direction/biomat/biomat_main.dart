import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'BioMatCourseList.dart';
import 'package:mma_mse/customTile.dart';

class biomat_main extends StatefulWidget {
  biomat_main({Key key}) : super(key: key);

  @override
  _biomat_mainState createState() => _biomat_mainState();
}

class _biomat_mainState extends State<biomat_main> {
  Drawer _htSideMenue() => Drawer(
        child: ListView(children: <Widget>[
          DrawerHeader(
              child: Text(
            'Biomaterial',
            style: TextStyle(fontSize: _screenH / 30),
          )),
          customListTile(
            name: "Matls 4B03",
            controller: controller,
            pageTo: 1,
            fonts: _screenH / 45,
          ),
          customListTile(
            name: "ChE 403",
            controller: controller,
            pageTo: 2,
            fonts: _screenH / 45,
          ),
          customListTile(
            name: "ChemBio 3BM3",
            controller: controller,
            pageTo: 1,
            fonts: _screenH / 45,
          ),
          customListTile(
            name: "Matls 4B03",
            controller: controller,
            pageTo: 1,
            fonts: _screenH / 45,
          )
        ]),
      );
  final PageController controller = PageController(initialPage: 0);
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
    return Scaffold(
      drawer: Theme(
        data: ThemeData(
          canvasColor: Colors.white.withOpacity(0.8),
        ),
        child: Container(width: 220, child: _htSideMenue()),
      ),
      body: PageView(
        controller: controller,
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Stack(
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
                      image: NetworkImage(
                          "https://github.com/RayLyu-Mac/MMA/blob/master/assest/search/direction/biomat.jpg?raw=true"),
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
                        "Biomaterial",
                        style: TextStyle(
                            fontSize: _screenH / 30,
                            color: Colors.black,
                            decoration: TextDecoration.none),
                      ),
                      Text(
                        "intro",
                        style: TextStyle(
                            fontSize: _screenH / 50,
                            color: Colors.black,
                            decoration: TextDecoration.none),
                      ),
                    ])),
              )
            ],
          ),
          biomatCourseList()
        ],
      ),
    );
  }
}
