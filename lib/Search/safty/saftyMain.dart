import 'package:flutter/material.dart';
import 'package:mma_mse/Search/buttonMode.dart';
import 'saftyData.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class saftyMain extends StatefulWidget {
  saftyMain({Key key}) : super(key: key);

  @override
  _saftyMainState createState() => _saftyMainState();
}

class _saftyMainState extends State<saftyMain> {
  double _screenWidth;
  double _screenH;
  List toolDataList = List<ToolData>();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  @override
  void initState() {
    super.initState();
    toolDataList = ToolData().createToolList();
  }

  @override
  Widget build(BuildContext context) {
    final ScrollController controller = ScrollController();
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          Positioned(
              top: _screenH / 20,
              left: _screenWidth / 15,
              child: Column(
                children: [
                  Text(
                    "Safety",
                    style: TextStyle(
                        fontSize: _screenH / 22, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  Icon(FontAwesomeIcons.lifeRing)
                ],
              )),
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
