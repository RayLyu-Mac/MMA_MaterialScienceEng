import 'package:mma_mse/workingInPro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mma_mse/fancyButton.dart';
import 'package:mma_mse/SendEmail/sendEmailMain.dart';
import 'package:mma_mse/Drawer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class roomHorizontal extends StatefulWidget {
  final String emailTo;
  final String location;
  final Widget pageTo;
  final String roomName;
  final String roomTi;
  final String roomCont;
  final String roomImg;
  roomHorizontal(
      {@optionalTypeArgs this.emailTo,
      @required this.roomName,
      @optionalTypeArgs this.roomTi,
      @optionalTypeArgs this.pageTo,
      @required this.roomCont,
      @optionalTypeArgs this.location,
      @required this.roomImg,
      Key key})
      : super(key: key);

  @override
  _roomHorizontalState createState() => _roomHorizontalState();
}

class _roomHorizontalState extends State<roomHorizontal> {
  double _screenWidth;
  double _screenH;
  double adjust = 1;

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

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
        title: Text(widget.roomTi),
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
                    border: Border.all(width: 4, color: Colors.grey[300]),
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
                        width: _screenWidth / 2.2,
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(10, 1, 5, 5),
                        width: _screenWidth / 2.2,
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
                    ],
                  ),
                  Column(
                    children: [
                      fancyBut(
                          icon: Icons.explore_rounded,
                          pageTo: workingInProg(),
                          height: _screenH / 10,
                          width: _screenWidth / 2.2,
                          buttonName: "Test"),
                      SizedBox(
                        height: _screenH / 40,
                      ),
                      fancyBut(
                          icon: Icons.email_rounded,
                          height: _screenH / 10,
                          width: _screenWidth / 2.2,
                          buttonName: "Manager",
                          pageTo: EmailContent(
                            emailTo: widget.emailTo != null
                                ? widget.emailTo
                                : "Please enter the email",
                            locationOfEqup: widget.location != null
                                ? widget.location
                                : "NUll",
                            nameOfEqup: "Buehler Precision Cutter",
                          )),
                      SizedBox(
                        height: _screenH / 40,
                      ),
                      fancyBut(
                        pageTo: widget.pageTo ?? workingInProg(),
                        icon: Icons.follow_the_signs_rounded,
                        buttonName: "Layout",
                        height: _screenH / 10,
                        width: _screenWidth / 2.2,
                      )
                    ],
                  )
                ],
              ))
        ],
      ),
    );
  }
}
