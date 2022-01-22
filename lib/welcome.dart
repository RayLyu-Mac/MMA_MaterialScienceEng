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
  }

  @override
  Widget build(BuildContext context) {
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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              AnimatedTextKit(
                animatedTexts: [
                  TyperAnimatedText(
                    "Welcome to MSE",
                    speed: const Duration(milliseconds: 1200),
                    textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w700),
                  )
                ],
                totalRepeatCount: 2,
                pause: const Duration(milliseconds: 400),
                displayFullTextOnTap: true,
                stopPauseOnTap: true,
              ),
            ],
          ),
          backgroundColor: Colors.black,
        ),
      ),
      body: Container(
        constraints: BoxConstraints.expand(
          width: _screenWidth / 1,
          height: _screenH / 1 / adjust,
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
          colorFilter: new ColorFilter.mode(
              Colors.blueAccent[400].withOpacity(0.7), BlendMode.dstATop),
          image: AssetImage("assest/picture2.png"),
          fit: BoxFit.cover,
        )),
        child: Column(
          children: [
            SizedBox(
              height: _screenH / 25,
            ),
            Text(
              "McMaster University",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: _screenWidth / 16),
            ),
            SizedBox(
              height: _screenH / 80,
            ),
            Text(
              "Department of Material Science and Engineering",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: _screenWidth / 25),
            ),
            SizedBox(
              height: _screenH / 20,
            ),
            Container(
              constraints: BoxConstraints.expand(
                width: _screenWidth / 2,
                height: _screenH / 2.6 / adjust,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assest/picture1.png"),
                    fit: BoxFit.cover),
              ),
            ),
            SizedBox(
              height: _screenH / 25,
            ),
            Text(
              "MMA System \nThe APP for Material Eng Student",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: _screenWidth / 19,
                  color: Colors.grey[50]),
            ),
            SizedBox(
              height: _screenH / 35,
            ),
            fancyBut(
                pageTo: conditionTerms(pageTo: layout_overview()),
                width: _screenWidth / 1.2,
                height: _screenH / 10,
                fontsize: 25,
                icon: FontAwesomeIcons.thumbsUp,
                buttonName: "   Let's Start : )"),
          ],
        ),
      ),
    );
  }
}
