import 'package:mma_mse/Search/extramenu.dart';
import 'package:flutter/material.dart';
import 'relatedInfo/referenceData.dart';

class standardDrawer extends StatefulWidget {
  final String header;
  final List<ListTile> others;
  standardDrawer(
      {@required this.header, @optionalTypeArgs this.others, Key key})
      : super(key: key);

  @override
  _standardDrawerState createState() => _standardDrawerState();
}

class _standardDrawerState extends State<standardDrawer> {
  double _screenWidth;
  double _screenH;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
    if (_screenH / _screenWidth > 2) {
      _screenH = _screenH * 0.83;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 25,
      child: ListView(
        children: [
          DrawerHeader(
              child: Column(
            children: [
              Text(
                widget.header,
                style: TextStyle(
                    fontSize: _screenH / 30, fontWeight: FontWeight.bold),
              ),
              Container(
                constraints: BoxConstraints.expand(
                    width: _screenWidth / 1.5, height: _screenWidth / 4),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assest/logocolor.png"))),
              )
            ],
          )),
          SizedBox(
            height: _screenH / 40,
          ),
          floorMenu(),
          SizedBox(
            height: 3,
          ),
          extraMenu(),
          SizedBox(
            height: 3,
          ),
          contact(),
          refer(),
          aboutUs()
        ],
      ),
    );
  }
}
