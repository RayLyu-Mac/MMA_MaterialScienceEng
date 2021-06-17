import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mma_mse/fancyButton.dart';
import 'package:mma_mse/equipment/functionButtonMode.dart';
import 'package:mma_mse/SendEmail/sendEmailMain.dart';

class roomMode extends StatefulWidget {
  final String emailTo;
  final String location;
  final String roomName;
  final String roomTi;
  final String roomCont;
  final Widget roomLayO;
  final String roomImg;
  roomMode(
      {@optionalTypeArgs this.emailTo,
      @required this.roomName,
      @required this.roomTi,
      @required this.roomLayO,
      @required this.roomCont,
      @optionalTypeArgs this.location,
      @required this.roomImg,
      Key key})
      : super(key: key);

  @override
  _roomModeState createState() => _roomModeState();
}

class _roomModeState extends State<roomMode> {
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
      _screenH = _screenH * 0.9;
      adjust = 0.83;
    } else {
      adjust = 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.roomName),
        backgroundColor: Colors.black,
      ),
      body: Stack(
        children: [
          Positioned(
              top: _screenH / 40,
              left: _screenWidth / 55,
              child: Container(
                constraints: BoxConstraints.expand(
                    width: _screenWidth / 2.1, height: _screenH / 1.9),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(width: 4, color: Colors.grey[300]),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(widget.roomImg))),
              )),
          Positioned(
              top: _screenH / 30,
              left: _screenWidth / 2,
              child: Container(
                width: _screenWidth / 2.1,
                child: Column(
                  children: [
                    Text(
                      widget.roomTi,
                      style: TextStyle(
                          fontSize: _screenH / 35, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: _screenH / 30,
                    ),
                    Text(
                      widget.roomCont,
                      style: TextStyle(
                          fontSize: _screenH / 43, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: _screenH / 20,
                    ),
                  ],
                ),
              )),
          functionButtonMode(
              top: _screenH / 1.7,
              left: _screenWidth / 15,
              fontSize: 20,
              buttonName: "Test"),
          functionButtonMode(
              top: _screenH / 1.45,
              fontSize: 20,
              left: _screenWidth / 15,
              buttonName: "Manager",
              pageTo: EmailContent(
                emailTo: widget.emailTo != null
                    ? widget.emailTo
                    : "Please enter the email",
                locationOfEqup:
                    widget.location != null ? widget.location : "NUll",
                nameOfEqup: "Buehler Precision Cutter",
              )),
          Positioned(
              top: _screenH / 1.7,
              left: _screenWidth / 2,
              child: fancyBut(
                pageTo: widget.roomLayO,
                icon: Icons.follow_the_signs_rounded,
                buttonName: "Layout",
                height: _screenH / 8,
                width: _screenWidth / 2.1,
              ))
        ],
      ),
    );
  }
}
