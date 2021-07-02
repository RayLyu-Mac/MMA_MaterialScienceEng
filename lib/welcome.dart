import 'package:flutter/material.dart';
import 'package:mma_mse/layout_overview.dart';
import 'fancyButton.dart';
import 'terms&Cond.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

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
                top: _screenH / 30,
                left: _screenWidth / 4.3,
                child: Container(
                  child: Text(
                    "McMaster University",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: _screenH / 30),
                  ),
                )),
            Positioned(
                top: _screenH / 12,
                left: _screenWidth / 25,
                child: Container(
                  child: Text(
                    "Department of Materials Science and Engineering",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: _screenH / 40),
                  ),
                )),
            Positioned(
                top: _screenH / 1.8,
                left: _screenWidth / 6,
                child: Container(
                  child: Text(
                    "MMA System: \nThe APP for Material Eng Student",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: _screenH / 40),
                  ),
                )),
            Positioned(
                top: _screenH / 7.2,
                left: _screenWidth / 3.8,
                child: Container(
                  constraints: BoxConstraints.expand(
                    width: _screenWidth / 2.2,
                    height: _screenH / 2.8,
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assest/picture1.png"),
                        fit: BoxFit.cover),
                  ),
                )),
            Positioned(
              top: _screenH / 1.5,
              left: _screenWidth / 12,
              child: fancyBut(
                  pageTo: conditionTerms(pageTo: layout_overview()),
                  width: _screenWidth / 1.2,
                  height: _screenH / 10,
                  fontsize: 25,
                  icon: FontAwesomeIcons.thumbsUp,
                  buttonName: "Let's Start : )"),
            ),
          ],
        ),
      ),
    );
  }
}
