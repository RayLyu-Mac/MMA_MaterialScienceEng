import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class warning extends StatefulWidget {
  final Widget pageTo;
  final String warning_note;
  const warning({@required this.pageTo, @required this.warning_note, Key key})
      : super(key: key);

  @override
  _warningState createState() => _warningState();
}

class _warningState extends State<warning> with SingleTickerProviderStateMixin {
  double _screenWidth;
  double _screenH;
  double adjust;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
    if (_screenH / _screenWidth > 2) {
      _screenH = _screenH * 0.83;
      adjust = 0.83;
    } else {
      adjust = 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            constraints: BoxConstraints.expand(
                width: _screenWidth / 1.21, height: _screenH / 1.25 / adjust),
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.4),
                borderRadius: BorderRadius.circular(6.0),
                border: Border.all(
                  width: 8,
                  color: Colors.grey[200].withOpacity(0.8),
                )),
            child: AlertDialog(
                insetPadding: EdgeInsets.zero,
                contentPadding: EdgeInsets.fromLTRB(
                    _screenWidth / 20, 0, _screenWidth / 45, 0),
                buttonPadding:
                    EdgeInsets.fromLTRB(0, _screenH / 20, 0, _screenH / 30),
                backgroundColor: Colors.redAccent[100].withOpacity(0.8),
                elevation: 5,
                title: Text(
                  "Before Start",
                  style: TextStyle(fontSize: _screenH / 27),
                ),
                content: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.pan_tool,
                        size: _screenH / 15,
                      ),
                      SizedBox(
                        height: _screenH / 20,
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
                        height: _screenH / 15,
                      ),
                      FlatButton.icon(
                          padding: EdgeInsets.fromLTRB(25, 15, 25, 15),
                          splashColor: Colors.white.withOpacity(0.7),
                          color: Colors.white.withOpacity(0.1),
                          shape: Border.all(
                            width: 3,
                            color: Colors.grey[200],
                          ),
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
                            style: TextStyle(fontSize: _screenH / 40),
                          )),
                      SizedBox(
                        height: _screenH / 70,
                      ),
                      FlatButton.icon(
                          padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
                          splashColor: Colors.white.withOpacity(0.7),
                          color: Colors.white.withOpacity(0.1),
                          shape: Border.all(
                            width: 3,
                            color: Colors.grey[200],
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.backspace),
                          label: Text(
                            "Cancel",
                            style: TextStyle(fontSize: _screenH / 40),
                          ))
                    ]))));
  }
}
