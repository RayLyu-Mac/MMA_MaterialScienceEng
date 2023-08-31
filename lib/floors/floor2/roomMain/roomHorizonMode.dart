import 'package:mma_mse/workingInPro.dart';
import 'package:flutter/material.dart';
import 'package:mma_mse/fancyButton.dart';
import 'package:mma_mse/Drawer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class roomHorizontal extends StatefulWidget {
  final String? emailTo;
  final String? location;
  final Widget? pageTo;
  final String roomName;
  final String? roomTi;
  final String roomCont;
  final String roomImg;
  roomHorizontal(
      {@optionalTypeArgs this.emailTo,
      required this.roomName,
      @optionalTypeArgs this.roomTi,
      @optionalTypeArgs this.pageTo,
      required this.roomCont,
      @optionalTypeArgs this.location,
      required this.roomImg,
      Key? key})
      : super(key: key);

  @override
  _roomHorizontalState createState() => _roomHorizontalState();
}

class _roomHorizontalState extends State<roomHorizontal> {
  double _screenWidth = 0;
  double _screenH = 0;
  double adjust = 1;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    if (_screenH / _screenWidth > 2) {
      _screenH = _screenH * 0.85;
      adjust = 0.8;
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.roomTi!),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
              padding: EdgeInsets.fromLTRB(10, 3, 19, 3),
              iconSize: 32,
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(FontAwesomeIcons.timesCircle))
        ],
      ),
      drawer: standardDrawer(
        header: widget.roomName,
      ),
      body: Stack(
        children: [
          Positioned(
              top: _screenH / 50,
              left: _screenWidth / 45,
              child: Container(
                constraints: BoxConstraints.expand(
                    width: _screenWidth / 1.04, height: _screenH / 2.25),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(width: 4, color: Colors.grey.shade300),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(widget.roomImg))),
              )),
          Positioned(
              left: _screenWidth / 45,
              top: _screenH / 2,
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(10, 1, 5, 5),
                        child: Text(
                          widget.roomTi ?? widget.roomName,
                          style: TextStyle(
                              fontSize: _screenH / 40,
                              fontWeight: FontWeight.bold),
                        ),
                        width: _screenWidth / 1.1,
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(10, 1, 5, 5),
                        width: _screenWidth / 1.1,
                        child: Text(
                          widget.roomCont,
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: _screenH / 40),
                        ),
                      ),
                      SizedBox(
                        height: _screenH / 50,
                      ),
                      fancyBut(
                        pageTo: widget.pageTo ?? workingInProg(),
                        icon: Icons.follow_the_signs_rounded,
                        buttonName: "Layout",
                        height: _screenH / 8.5,
                        width: _screenWidth / 1.1,
                      ),
                    ],
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
