import 'package:flutter/material.dart';
import 'package:mma_mse/Search/buttonMode.dart';
import 'saftyData.dart';

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
    return Scaffold(
        appBar: AppBar(
          title: Text("Safety"),
          backgroundColor: Colors.black,
        ),
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
