import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class conditionTerms extends StatefulWidget {
  final Widget pageTo;
  conditionTerms({@required this.pageTo, Key key}) : super(key: key);

  @override
  _conditionTermsState createState() => _conditionTermsState();
}

class _conditionTermsState extends State<conditionTerms> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: AlertDialog(
        buttonPadding: EdgeInsets.fromLTRB(15, 30, 10, 20),
        title: Text("Terms and Conditions: Please Read Before Using this App"),
        content: Column(
          children: [
            Text(
              "Training",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
                "Please note you still need to pass the McMaster Assigned training before using the equipment. \nYou must be famailar with the SOPs of the machine you are going to operate"),
            Text("Reference Intellectual Property rights",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text(
                "Please view the reference list for the pictures and words used in this app"),
            FlatButton.icon(
                onPressed: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: widget.pageTo,
                          type: PageTransitionType.scale,
                          alignment: Alignment.topCenter));
                },
                icon: Icon(Icons.align_horizontal_left_sharp),
                label: Text("Agree and Start"))
          ],
        ),
      ),
    );
  }
}
