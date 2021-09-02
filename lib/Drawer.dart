import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mma_mse/Search/extramenu.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'layout_overview.dart';
import 'floors/floor1.dart';

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
  double adjust = 1;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    if (_screenH / _screenWidth > 1.7) {
      adjust = 1.55;
    }
    return Drawer(
      elevation: 25,
      child: ListView(
        children: [
          DrawerHeader(
              padding: EdgeInsets.fromLTRB(16.0, 8, 16.0, 4),
              child: Column(
                children: [
                  Text(
                    widget.header,
                    style: TextStyle(
                        fontSize: _screenH / 30, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    constraints: BoxConstraints.expand(
                        width: _screenWidth / 1.5, height: _screenWidth / 4.4),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assest/logocolor.png"))),
                  )
                ],
              )),
          SizedBox(
            height: _screenH / 35,
          ),
          floorMenu(),
          SizedBox(
            height: 3,
          ),
          extraMenu(),
          aboutUs(),
          SizedBox(
            height: 3,
          ),
          SizedBox(
            height: _screenH / 3.8 * adjust,
          ),
          Container(
            constraints: BoxConstraints.expand(
                width: _screenWidth / 8, height: _screenH / 10),
            child: RaisedButton.icon(
                onPressed: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          duration: const Duration(milliseconds: 500),
                          child: layout_overview(),
                          type: PageTransitionType.leftToRight));
                },
                icon: Icon(FontAwesomeIcons.signOutAlt),
                color: Colors.grey[200],
                label: Text(
                  "  Back to Layout",
                  style: TextStyle(
                      fontSize: _screenH / 35, fontWeight: FontWeight.bold),
                )),
          ),
        ],
      ),
    );
  }
}
