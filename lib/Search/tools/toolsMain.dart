import 'package:flutter/material.dart';
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
  }

  @override
  void initState() {
    super.initState();
    toolDataList = ToolData().createToolList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Tools Main"),
          backgroundColor: Colors.black,
        ),
        body: SafeArea(
          child: Stack(
            children: [
              for (var i = 0; i < toolDataList.length; i++)
                IntroButtonMode(
                  pageTo: toolDataList[i].pageTo,
                  backImg: toolDataList[i].backImg,
                  title: toolDataList[i].name,
                  top: toolDataList[i].top,
                  positionCode: toolDataList[i].posCode,
                ),
            ],
          ),
        ));
  }
}
