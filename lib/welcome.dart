import 'package:flutter/material.dart';
import 'package:mma_mse/layout_overview.dart';
import 'fancyButton.dart';
import 'terms&Cond.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'relatedInfo/reference.dart';

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
              AnimatedTextKit(
                animatedTexts: [
                  WavyAnimatedText(
                    "Welcome to MSE",
                    textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w700),
                  )
                ],
                totalRepeatCount: 4,
                pause: const Duration(milliseconds: 1000),
                displayFullTextOnTap: true,
                stopPauseOnTap: true,
              ),
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
              child: fancyBut(
                  pageTo: layout_overview(),
                  width: _screenWidth / 2.5,
                  height: _screenH / 10,
                  icon: FontAwesomeIcons.graduationCap,
                  buttonName: "Student"),
            ),
            Positioned(
              top: _screenH / 1.6,
              left: _screenWidth / 1.85,
              child: fancyBut(
                  pageTo: layout_overview(),
                  width: _screenWidth / 2.5,
                  height: _screenH / 10,
                  icon: FontAwesomeIcons.tools,
                  buttonName: "Maintainer"),
            ),
            Positioned(
              top: _screenH / 2.6,
              left: _screenWidth / 30,
              child: fancyBut(
                  pageTo: layout_overview(),
                  width: _screenWidth / 2.5,
                  height: _screenH / 10,
                  icon: FontAwesomeIcons.chalkboardTeacher,
                  buttonName: "Faculty"),
            ),
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
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return conditionTerms(pageTo: layout_overview());
                        });
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
                top: _screenH / 1.35,
                left: _screenWidth / 1.8,
                child: RaisedButton.icon(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => reference(),
                          ));
                    },
                    icon: Icon(Icons.refresh_outlined),
                    label: Text("Check Reference"))),
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
