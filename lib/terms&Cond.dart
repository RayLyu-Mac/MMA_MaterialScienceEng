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
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white.withOpacity(0.7),
                border: Border.all(width: 6, color: Colors.grey[300])),
            margin: EdgeInsets.fromLTRB(_screenWidth / 14, _screenH / 14,
                _screenWidth / 15, _screenH / 20),
            padding: EdgeInsets.fromLTRB(_screenWidth / 20, _screenH / 25,
                _screenWidth / 18, _screenH / 25),
            child: Column(
              children: [
                Text(
                  "Terms and Conditions",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: _screenWidth / 19, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: _screenH / 40,
                ),
                Text(
                  "\n Please Read Before Using this App",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: _screenWidth / 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.redAccent),
                ),
                SizedBox(
                  height: _screenH / 18,
                ),
                Text(
                  "1. Training",
                  style: TextStyle(
                      fontSize: _screenWidth / 18, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: _screenH / 40,
                ),
                Text(
                  "Please note you still need to pass the McMaster Assigned training before using the equipment. \nYou must be famailar with the SOPs of the machine you are going to operate",
                  style: TextStyle(fontSize: _screenWidth / 25),
                ),
                SizedBox(
                  height: _screenH / 18,
                ),
                Text(
                  "2. Reference Intellectual Property rights",
                  style: TextStyle(
                    fontSize: _screenWidth / 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: _screenH / 40,
                ),
                Text(
                  "Please view the reference list for the pictures and words used in this app",
                  style: TextStyle(fontSize: _screenWidth / 25),
                ),
                SizedBox(
                  height: _screenH / 18,
                ),
                Text(
                  "3. Update",
                  style: TextStyle(
                      fontSize: _screenWidth / 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: _screenH / 40,
                ),
                Text(
                  "The information provided in this app is up to date. However, this app is not responsible for renewing some information constantly. Please refer to McMaster University Website for most recent update.",
                  style: TextStyle(fontSize: _screenWidth / 25),
                ),
                SizedBox(
                  height: _screenH / 8,
                ),
                fancyBut(
                    pageTo: widget.pageTo,
                    width: _screenWidth / 1.4,
                    height: _screenH / 8,
                    fontsize: 23,
                    icon: FontAwesomeIcons.gofore,
                    buttonName: "Agree and Start")
              ],
            ),
          ),
        ));
  }
}
