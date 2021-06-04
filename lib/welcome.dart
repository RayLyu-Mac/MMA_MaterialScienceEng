import 'package:flutter/material.dart';
import 'package:mma_mse/layout_overview.dart';
import 'floors/floor1.dart';
import 'terms&Cond.dart';

class welcome extends StatefulWidget {
  welcome({Key key}) : super(key: key);

  @override
  _welcomeState createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {
  double _screenWidth;
  double _screenH;
  double _height = 150;
  double _width = 150;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: AppBar(
          toolbarHeight: 100,
          titleSpacing: 5.0,
          centerTitle: true,
          title: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                "Welcome",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w700),
              ),
              Text("Material Science and Engineering",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700)),
            ],
          ),
          backgroundColor: Colors.black,
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
                top: _screenH / 26 - 5,
                left: _screenWidth / 14,
                child: Text(
                  "Sign In As...",
                  style: TextStyle(
                      fontSize: _screenH / 30, fontWeight: FontWeight.bold),
                )),
            Positioned(
                top: _screenH / 5.5,
                left: _screenWidth / 1.85,
                child: Text(
                  "Student",
                  style: TextStyle(
                      fontSize: _screenH / 30, fontWeight: FontWeight.bold),
                )),
            Positioned(
                top: _screenH / 1.6,
                left: _screenWidth / 1.85,
                child: Text(
                  "Maintainer",
                  style: TextStyle(
                      fontSize: _screenH / 30, fontWeight: FontWeight.bold),
                )),
            Positioned(
                top: _screenH / 2.4,
                left: 80,
                child: Text(
                  "Faculty",
                  style: TextStyle(
                      fontSize: _screenH / 30, fontWeight: FontWeight.bold),
                )),
            Positioned(
                top: _screenH / 8,
                left: _screenWidth / 11,
                child: GestureDetector(
                  child: Container(
                    height: _screenH / 5,
                    width: _screenWidth / 3,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://github.com/RayLyu-Mac/MMA/blob/master/assest/welcome/book.PNG?raw=true"),
                            fit: BoxFit.cover)),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              conditionTerms(pageTo: layout_overview()),
                        ));
                  },
                )),
            Positioned(
              top: _screenH / 3,
              left: _screenWidth / 1.85,
              child: GestureDetector(
                child: Container(
                  height: _screenH / 5,
                  width: _screenWidth / 4,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://github.com/RayLyu-Mac/MMA/blob/master/assest/welcome/micro.PNG?raw=true"),
                          fit: BoxFit.cover)),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => layout_overview(),
                      ));
                },
              ),
            ),
            Positioned(
                top: _screenH / 1.8,
                left: _screenWidth / 11,
                child: GestureDetector(
                  child: Container(
                    height: _screenH / 5,
                    width: _screenWidth / 3,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://github.com/RayLyu-Mac/MMA/blob/master/assest/welcome/tool.PNG?raw=true"),
                            fit: BoxFit.cover)),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => layout_overview(),
                        ));
                  },
                )),
          ],
        ),
      ),
    );
  }
}
