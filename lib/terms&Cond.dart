import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';
import 'fancyButton.dart';

class conditionTerms extends StatefulWidget {
  final Widget pageTo;
  conditionTerms({@required this.pageTo, Key key}) : super(key: key);

  @override
  _conditionTermsState createState() => _conditionTermsState();
}

class _conditionTermsState extends State<conditionTerms> {
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
      _screenH = _screenH * 0.8;
      adjust = 0.73;
    }
    return Scaffold(
      backgroundColor: Colors.indigo[50],
      body: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white.withOpacity(0.7),
            border: Border.all(width: 6, color: Colors.grey[300])),
        margin: EdgeInsets.fromLTRB(
            _screenWidth / 12, _screenH / 5, _screenWidth / 13, _screenH / 12),
        padding: EdgeInsets.fromLTRB(
            _screenWidth / 12, _screenH / 30, _screenWidth / 13, _screenH / 30),
        constraints: BoxConstraints.expand(
          width: _screenWidth / 1.2,
          height: _screenH / 1.3 / adjust,
        ),
        child: Column(
          children: [
            Text(
              "Terms and Conditions",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: _screenH / 35, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "\n Please Read Before Using this App",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: _screenH / 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent),
            ),
            SizedBox(
              height: _screenH / 25,
            ),
            Text(
              "1. Training",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: _screenH / 45,
            ),
            Text(
                "Please note you still need to pass the McMaster Assigned training before using the equipment. \nYou must be famailar with the SOPs of the machine you are going to operate"),
            SizedBox(
              height: _screenH / 45,
            ),
            Text(
              "2. Reference Intellectual Property rights",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: _screenH / 45,
            ),
            Text(
                "Please view the reference list for the pictures and words used in this app"),
            SizedBox(
              height: _screenH / 15,
            ),
            fancyBut(
                pageTo: widget.pageTo,
                width: _screenWidth / 1.5,
                height: _screenH / 10,
                fontsize: 19,
                icon: FontAwesomeIcons.gofore,
                buttonName: "Agree and Start")
          ],
        ),
      ),
    );
  }
}
