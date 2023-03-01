import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class warning extends StatefulWidget {
  final Widget pageTo;
  final String warning_note;
  const warning({required this.pageTo, required this.warning_note, Key? key})
      : super(key: key);

  @override
  _warningState createState() => _warningState();
}

class _warningState extends State<warning> with SingleTickerProviderStateMixin {
  double _screenWidth = 0;
  double _screenH = 0;
  double adjust = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    if (_screenH / _screenWidth > 1.7) {
      adjust = 0.855;
    }
    return Center(
        child: Container(
      width: _screenWidth / 1.25,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.4),
          borderRadius: BorderRadius.circular(18.0),
          border: Border.all(
            width: 9,
            color: Colors.grey.shade200.withOpacity(0.8),
          )),
      child: SingleChildScrollView(
          child: AlertDialog(
              insetPadding: EdgeInsets.zero,
              contentPadding: EdgeInsets.fromLTRB(
                  _screenWidth / 18, 2, _screenWidth / 45, 10),
              buttonPadding:
                  EdgeInsets.fromLTRB(0, _screenH / 20, 0, _screenH / 30),
              backgroundColor: Colors.redAccent.shade100.withOpacity(0.8),
              elevation: 5,
              title: Text(
                "Before Entering",
                style: TextStyle(fontSize: _screenH / 27),
              ),
              content: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: _screenH / 20,
                    ),
                    Icon(
                      Icons.pan_tool,
                      size: _screenH / 15,
                    ),
                    SizedBox(
                      height: _screenH / 24,
                    ),
                    Container(
                      width: _screenWidth / 1.15,
                      child: Text(
                        widget.warning_note,
                        style: TextStyle(
                            fontSize: _screenH / 38,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: _screenH / 20,
                    ),
                    ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  child: widget.pageTo,
                                  duration: Duration(milliseconds: 650),
                                  type: PageTransitionType.scale,
                                  alignment: Alignment.centerLeft));
                        },
                        icon: Icon(Icons.forward),
                        label: Text(
                          "Forward",
                          style: TextStyle(fontSize: _screenH / 38),
                        )),
                    SizedBox(
                      height: _screenH / 45,
                    ),
                    ElevatedButton.icon(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.backspace),
                        label: Text(
                          "Cancel",
                          style: TextStyle(fontSize: _screenH / 38),
                        )),
                    SizedBox(
                      height: _screenH / 45,
                    ),
                  ]))),
    ));
  }
}
