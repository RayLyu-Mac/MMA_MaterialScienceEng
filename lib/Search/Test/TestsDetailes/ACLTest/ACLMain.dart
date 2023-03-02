import 'package:flutter/material.dart';
import 'package:mma_mse/Search/Test/testDetailMode.dart';
import 'ACLData.dart';
import 'package:flutter/services.dart';
import 'package:mma_mse/customTile.dart';
import 'package:mma_mse/Search/Test/TestsDetailes/TensileTest/testResult.dart';
import 'package:mma_mse/Search/Test/TestsDetailes/TestDetailFormat.dart';

class ACLTest extends StatefulWidget {
  ACLTest({Key? key}) : super(key: key);
  List<Widget> pages = [];

  @override
  _ACLTestState createState() => _ACLTestState();
}

class _ACLTestState extends State<ACLTest> {
  double _screenWidth = 0;
  double _screenH = 0;
  List<testdetailData> testBGdetail = aclData;
  List<Widget> pages = [];
  List listtile = [];
  double adjust = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
    if (_screenH / _screenWidth > 2) {
      _screenH = _screenH * 0.83;
      adjust = 0.83;
    } else {
      adjust = 1;
    }
  }

  @override
  void initState() {
    super.initState();

    for (var j = 0; j < testBGdetail.length; j++) {
      listtile.add(testBGdetail[j].title);
      pages.add(pageMode(
        title: testBGdetail[j].title,
        content: testBGdetail[j].content,
        backImg: testBGdetail[j].backImg,
        addOnImg: testBGdetail[j].addOnImg,
        pageTo: testBGdetail[j].pageTo,
        height: testBGdetail[j].top,
        length: testBGdetail[j].height,
        width: testBGdetail[j].width,
        left: testBGdetail[j].left,
      ));
    }
    pages.add(tensileTResult());
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    Drawer meturAna() => Drawer(
          child: ListView(
            children: [
              DrawerHeader(child: Text("Elastic Modulus Test by using MTS")),
              for (var k = 0; k < listtile.length; k++)
                customListTile(
                    name: listtile[k],
                    pageTo: k,
                    fonts: 13,
                    controller: controller)
            ],
          ),
        );
    return Scaffold(
        drawer: meturAna(),
        body: PageView(
          controller: controller,
          children: pages,
        ));
  }
}
