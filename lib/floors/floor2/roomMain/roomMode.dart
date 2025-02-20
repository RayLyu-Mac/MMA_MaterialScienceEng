import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mma_mse/fancyButton.dart';
import 'package:mma_mse/Drawer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class roomMode extends StatefulWidget {
  final String location;
  final String roomName;
  final String roomTi;
  final String roomCont;
  final Widget roomLayO;
  final String roomImg;
  roomMode(
      {required this.roomName,
      required this.roomTi,
      required this.roomLayO,
      required this.roomCont,
      this.location = "Null",
      required this.roomImg,
      Key? key})
      : super(key: key);

  @override
  _roomModeState createState() => _roomModeState();
}

class _roomModeState extends State<roomMode> {
  String emailTo = "Null";
  double _screenWidth = 0;
  double _screenH = 0;
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
      drawer: StandardNavigationDrawer(headerTitle: widget.roomName),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            constraints: BoxConstraints.expand(height: _screenH / 2.7),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(width: 4, color: Colors.grey.shade300),
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(widget.roomImg))),
          ),
          Container(
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
          ),
          // Positioned(
          //     top: _screenH / 1.37,
          //     left: _screenWidth / 10,
          //     child: fancyBut(
          //         pageTo: workingInProg(),
          //         width: _screenWidth / 1.3,
          //         fontsize: 28,
          //         height: _screenH / 9,
          //         icon: Icons.email,
          //         buttonName: "Manager")),
          fancyBut(
            pageTo: widget.roomLayO,
            icon: Icons.layers_outlined,
            buttonName: "Layout",
            height: _screenH / 9,
            fontsize: 28,
            width: _screenWidth / 1.2,
          )
        ],
      ),
    );
  }
}
