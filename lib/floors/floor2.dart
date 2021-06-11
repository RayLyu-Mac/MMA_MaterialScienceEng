import 'package:flutter/material.dart';
import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/services.dart';
import 'package:mma_mse/workingInPro.dart';
import 'package:page_transition/page_transition.dart';

class floor2 extends StatefulWidget {
  floor2({Key key}) : super(key: key);

  @override
  _floor2State createState() => _floor2State();
}

class _floor2State extends State<floor2> {
  double _screenWidth;
  double _screenH;
  double adjust;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    if (_screenH / _screenWidth > 2) {
      _screenH = _screenH * 0.83;
      adjust = 0.83;
    } else {
      adjust = 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text(
          "JHE Floor II",
          style:
              TextStyle(fontSize: _screenH / 35, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
      ),
      body: Stack(
        children: [
          roomButton(
              left: _screenWidth / 10,
              top: _screenH / 35,
              length: _screenH / 15,
              width: _screenWidth / 3,
              name: "Stairs"),
          roomButton(
              left: _screenWidth / 10,
              top: _screenH / 9,
              length: _screenH / 6,
              width: _screenWidth / 3,
              name: "Room 243"),
          roomButton(
              left: _screenWidth / 10,
              top: _screenH / 3.4,
              length: _screenH / 12,
              width: _screenWidth / 3,
              name: "Room 242"),
          roomButton(
              left: _screenWidth / 10,
              top: _screenH / 2.5,
              length: _screenH / 12,
              width: _screenWidth / 3,
              name: "Room 241"),
          roomButton(
              left: _screenWidth / 10,
              top: _screenH / 2,
              length: _screenH / 12,
              width: _screenWidth / 3,
              name: "Room 240"),
          roomButton(
              left: _screenWidth / 10,
              top: _screenH / 1.66,
              length: _screenH / 7,
              width: _screenWidth / 3,
              name: "Room 239"),
          roomButton(
              left: _screenWidth / 10,
              top: _screenH / 1.3,
              length: _screenH / 12,
              width: _screenWidth / 3,
              name: "Room 238"),
          roomButton(
              left: _screenWidth / 5.5,
              top: _screenH / 1.66,
              length: _screenH / 20,
              width: _screenWidth / 4,
              fontsize: 18,
              name: "Room 239A"),
          roomButton(
              left: _screenWidth / 1.6,
              top: _screenH / 35,
              length: _screenH / 10,
              width: _screenWidth / 3,
              backC: Colors.lightGreenAccent[100],
              fontsize: 18,
              name: "Room 244")
        ],
      ),
    );
  }
}

class roomButton extends StatelessWidget {
  final double left;
  final double top;
  final double length;
  final double width;
  final String name;
  final Widget pageTo;
  final double fontsize;
  final Color backC;
  const roomButton(
      {@required this.left,
      @optionalTypeArgs this.backC,
      @required this.top,
      @required this.length,
      @optionalTypeArgs this.fontsize,
      @required this.width,
      @required this.name,
      @optionalTypeArgs this.pageTo,
      Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: top,
        left: left,
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                PageTransition(
                    duration: const Duration(milliseconds: 500),
                    child: pageTo ?? workingInProg(),
                    type: PageTransitionType.leftToRight));
          },
          child: Container(
            height: length,
            width: width,
            child: ClayContainer(
                parentColor: backC ?? Colors.blueGrey[100],
                borderRadius: 4,
                child: Center(
                  child: ClayText(
                    name,
                    size: fontsize ?? 22,
                    color: Colors.grey[500],
                  ),
                )),
          ),
        ));
  }
}
