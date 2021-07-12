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
  double adjust = 1;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
    print(_screenH / _screenWidth);
  }

  @override
  Widget build(BuildContext context) {
    print(_screenH / _screenWidth);
    if (_screenH / _screenWidth > 1.7) {
      _screenH = _screenH * 0.83;
      adjust = 0.8;
    }
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          toolbarHeight: 65,
          titleSpacing: 5.0,
          centerTitle: true,
          title: Column(
            children: [
              SizedBox(
                height: 20,
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
                totalRepeatCount: 2,
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
                top: 0,
                left: 0,
                child: Container(
                  constraints: BoxConstraints.expand(
                    width: _screenWidth / 1,
                    height: _screenH / 1 / adjust,
                  ),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    colorFilter: new ColorFilter.mode(
                        Colors.blueAccent[400].withOpacity(0.8),
                        BlendMode.dstATop),
                    image: AssetImage("assest/picture2.png"),
                    fit: BoxFit.cover,
                  )),
                )),
            Positioned(
                top: _screenH / 30,
                left: _screenWidth / 4.3,
                child: Container(
                  child: Text(
                    "McMaster University",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: _screenH / 32),
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
                top: _screenH / 1.63 / adjust,
                left: _screenWidth / 9.5,
                child: Container(
                  child: Text(
                    "MMA System \nThe APP for Material Eng Student",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: _screenH / 33,
                        color: Colors.grey[50]),
                  ),
                )),
            Positioned(
                top: _screenH / 6,
                left: _screenWidth / 4.2,
                child: Container(
                  constraints: BoxConstraints.expand(
                    width: _screenWidth / 1.8,
                    height: _screenH / 2.8 / adjust,
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assest/picture1.png"),
                        fit: BoxFit.cover),
                  ),
                )),
            Positioned(
              top: _screenH / 1.4 / adjust,
              left: _screenWidth / 12,
              child: fancyBut(
                  pageTo: conditionTerms(pageTo: layout_overview()),
                  width: _screenWidth / 1.2,
                  height: _screenH / 10,
                  fontsize: 25,
                  icon: FontAwesomeIcons.thumbsUp,
                  buttonName: " Let's Start : )"),
            ),
          ],
        ),
      ),
    );
  }
}
