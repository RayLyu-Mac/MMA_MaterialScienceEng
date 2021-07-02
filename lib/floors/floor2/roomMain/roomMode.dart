import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mma_mse/fancyButton.dart';
import 'package:mma_mse/equipment/functionButtonMode.dart';
import 'package:mma_mse/SendEmail/sendEmailMain.dart';
import 'package:mma_mse/Drawer.dart';

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
  double adjust = 1;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    if (_screenH / _screenWidth > 2) {
      _screenH = _screenH * 0.9;
      adjust = 0.83;
    }
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: Text(widget.roomName),
        backgroundColor: Colors.black,
      ),
      drawer: standardDrawer(header: widget.roomName),
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
          Positioned(
              top: _screenH / 1.37,
              left: _screenWidth / 10,
              child: fancyBut(
                  pageTo: EmailContent(
                    emailTo: widget.emailTo != null
                        ? widget.emailTo
                        : "Please enter the email",
                    locationOfEqup:
                        widget.location != null ? widget.location : "NUll",
                    nameOfEqup: "Buehler Precision Cutter",
                  ),
                  width: _screenWidth / 1.3,
                  fontsize: 28,
                  height: _screenH / 9,
                  icon: Icons.email,
                  buttonName: "Manager")),
          Positioned(
              top: _screenH / 1.7,
              left: _screenWidth / 10,
              child: fancyBut(
                pageTo: widget.roomLayO,
                icon: Icons.layers_outlined,
                buttonName: "Layout",
                height: _screenH / 9,
                fontsize: 28,
                width: _screenWidth / 1.3,
              ))
        ],
      ),
    );
  }
}
