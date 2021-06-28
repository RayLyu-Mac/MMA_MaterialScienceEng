import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mma_mse/Search/buttonMode.dart';

import 'tooData.dart';

class toolMain extends StatefulWidget {
  toolMain({Key key}) : super(key: key);

  @override
  _toolMainState createState() => _toolMainState();
}

class _toolMainState extends State<toolMain> {
  double _screenWidth;
  double _screenH;
  List toolDataList = List<ToolData>();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
    if (_screenH / _screenWidth > 2) {
      _screenH = _screenH * 0.86;
    }
  }

  @override
  void initState() {
    super.initState();
    toolDataList = ToolData().createToolList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: SafeArea(
          child: Stack(
            children: [
              Positioned(
                  top: _screenH / 20,
                  left: _screenWidth / 15,
                  child: Column(
                    children: [
                      Text(
                        "Material \nTool Boxs",
                        style: TextStyle(
                            fontSize: _screenH / 22,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      Icon(FontAwesomeIcons.toolbox)
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
