import 'package:page_transition/page_transition.dart';
import 'package:flutter/material.dart';

class BottomMenu extends StatefulWidget {
  final List<dynamic> buttonP;
  final List<IconData> button;
  final IconData? panelIcon;
  final int? animationTime;

  BottomMenu(
      {required this.button,
      required this.buttonP,
      @optionalTypeArgs this.animationTime,
      @optionalTypeArgs this.panelIcon,
      Key? key})
      : super(key: key);

  @override
  _floationPanelState createState() => _floationPanelState();
}

class _floationPanelState extends State<BottomMenu> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(type: BottomNavigationBarType.fixed, items: [
      BottomNavigationBarItem(
        icon: Icon(Icons.celebration),
        label: "Surprise",
      ),
      BottomNavigationBarItem(icon: Icon(Icons.qr_code), label: "Home"),
      BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Find"),
    ]);
  }
}
