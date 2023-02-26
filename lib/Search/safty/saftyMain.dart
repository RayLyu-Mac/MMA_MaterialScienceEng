import 'package:flutter/material.dart';
import 'package:mma_mse/Search/buttonMode.dart';
import 'saftyData.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mma_mse/Drawer.dart';
import 'package:mma_mse/floationPanel/PanelMain.dart';

class saftyMain extends StatefulWidget {
  saftyMain({Key? key}) : super(key: key);

  @override
  _saftyMainState createState() => _saftyMainState();
}

class _saftyMainState extends State<saftyMain> {
  double _screenWidth = 0;
  double _screenH = 0;
  List toolDataList = safetyData;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    final ScrollController controller = ScrollController();
    return Scaffold(
        bottomNavigationBar: ButtomMenu(),
        appBar: AppBar(
            title: Text("Matls Eng Safety Guide"),
            backgroundColor: Colors.grey[500],
            actions: [
              IconButton(
                  padding: EdgeInsets.fromLTRB(10, 3, 19, 3),
                  iconSize: 32,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(FontAwesomeIcons.timesCircle))
            ]),
        drawer: standardDrawer(header: "Matls Safety Guide"),
        body: SafeArea(
          child: Stack(
            children: [
              for (var i = 0; i < toolDataList.length; i++)
                IntroButtonMode(
                  str: true,
                  pageTo: toolDataList[i].pageTo,
                  backImg: toolDataList[i].backImg,
                  title: toolDataList[i].name,
                  positionCode: toolDataList[i].posCode,
                ),
            ],
          ),
        ));
  }
}
