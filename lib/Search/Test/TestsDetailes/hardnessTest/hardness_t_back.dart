import 'package:flutter/material.dart';
import 'hardnessTBGData.dart';
import 'dart:core';
import '../../testDetailMode.dart';
import 'package:mma_mse/customTile.dart';
import 'package:flutter/services.dart';
import 'package:mma_mse/Search/Test/TestsDetailes/TestDetailFormat.dart';

class hardness_test_bg extends StatefulWidget {
  hardness_test_bg({Key key}) : super(key: key);

  @override
  _hardness_test_bgState createState() => _hardness_test_bgState();
}

class _hardness_test_bgState extends State<hardness_test_bg> {
  double _screenWidth = 0;
  double _screenH = 0;
  List<testdetailData> testBGdetail = hardnessData;
  List<Widget> pages = [];
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  @override
  void initState() {
    super.initState();

    for (var j = 0; j < testBGdetail.length; j++) {
      pages.add(pageMode(
        title: testBGdetail[j].title,
        content: testBGdetail[j].content,
        backImg: testBGdetail[j].backImg,
        addOnImg: testBGdetail[j].addOnImg,
      ));
    }
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    Drawer _htSideMenue() => Drawer(
          child: ListView(children: <Widget>[
            DrawerHeader(child: Text('Hardness Test')),
            for (var j = 0; j < testBGdetail.length; j++)
              customListTile(
                controller: controller,
                name: testBGdetail[j].title,
                pageTo: j,
                fonts: 13,
              ),
          ]),
        );
    return Scaffold(
      drawer: Theme(
        data: ThemeData(
          canvasColor: Colors.white.withOpacity(0.8),
        ),
        child: Container(width: 220, child: _htSideMenue()),
      ),
      body: PageView(
        controller: controller,
        scrollDirection: Axis.horizontal,
        children: pages,
      ),
    );
  }
}
