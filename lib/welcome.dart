import 'package:flutter/material.dart';
import 'package:mma_mse/layout_overview.dart';
import 'fancyButton.dart';
import 'terms&Cond.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'DashBoard.dart';

class welcome extends StatefulWidget {
  welcome({Key? key}) : super(key: key);

  @override
  _welcomeState createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {
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
              Text(
                "Welcome to MSE",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
          backgroundColor: Colors.black,
        ),
      ),
      body: Center(
          child: Container(
        constraints: BoxConstraints.expand(
          width: _screenH * 9 / 16,
          height: _screenH,
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
          colorFilter: new ColorFilter.mode(
              Colors.blueAccent.withOpacity(0.7), BlendMode.dstATop),
          image: AssetImage("assest/picture2.png"),
          fit: BoxFit.fill,
        )),
        child: Column(
          children: [
            SizedBox(
              height: _screenH / 25,
            ),
            Text(
              "McMaster University",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            SizedBox(
              height: _screenH / 80,
            ),
            Text(
              "Department of Material Science and Engineering",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
            SizedBox(
              height: _screenH / 20,
            ),
            Spacer(),
            Container(
              width: _screenH / 4.5,
              child: Image(
                image: AssetImage("assest/picture1.png"),
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: _screenH / 25,
            ),
            Spacer(),
            Text(
              "MMA System \nThe APP for Material Eng Students",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.grey.shade200),
            ),
            SizedBox(
              height: _screenH / 24,
            ),
            fancyBut(
                pageTo: conditionTerms(pageTo: DashBoard()),
                width: _screenWidth / 1.25,
                height: _screenH / 9.8,
                fontsize: 22,
                icon: FontAwesomeIcons.rocket,
                buttonName: "   Let's Start : )"),
            SizedBox(
              height: _screenH / 30,
            ),
            Spacer(),
          ],
        ),
      )),
    );
  }
}
