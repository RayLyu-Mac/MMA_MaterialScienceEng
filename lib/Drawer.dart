import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mma_mse/DashBoard.dart';
import 'package:mma_mse/Search/extramenu.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class standardDrawer extends StatefulWidget {
  final String header;
  final List<ListTile>? others;
  standardDrawer({required this.header, this.others, Key? key})
      : super(key: key);

  @override
  _standardDrawerState createState() => _standardDrawerState();
}

class _standardDrawerState extends State<standardDrawer> {
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
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
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
            height: _screenH / 30,
          ),
          floorMenu(),
          SizedBox(
            height: 3,
          ),
          extraMenu(),
          aboutUs(),
          SizedBox(
            height: _screenH / 30,
          ),
          Container(
            constraints: BoxConstraints.expand(
                width: _screenWidth / 3, height: _screenH / 8.5),
            child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          duration: const Duration(milliseconds: 400),
                          child: DashBoard(),
                          type: PageTransitionType.leftToRight));
                },
                icon: Icon(FontAwesomeIcons.signOutAlt),
                label: Text(
                  "  Back to Dashboard",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
          ),
        ],
      ),
    );
  }
}
